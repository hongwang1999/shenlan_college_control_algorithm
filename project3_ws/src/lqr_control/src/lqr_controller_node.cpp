/**
 * @Author: YunKai Xia
 * @Date:   2022-06-17 22:17:32
 * @Last Modified by:   YunKai Xia
 * @Last Modified time: 2022-06-17 23:43:05
 */

#include "lqr_controller_node.h"
LQRControllerNode::LQRControllerNode() : pnh_("~") {}
LQRControllerNode::~LQRControllerNode() {}
bool LQRControllerNode::init() {
  std::string vehicle_odom_topic;
  std::string vehicle_cmd_topic;
  std::string roadmap_path;
  std::string path_vis_topic;
  std::string frame_id;
  double speed_P, speed_I, speed_D, target_speed, vis_frequency;
  pnh_.getParam("vehicle_odom_topic",vehicle_odom_topic);  //读取车辆定位的topic名
pnh_.getParam("vehicle_cmd_topic",vehicle_cmd_topic);   //读取车辆控制的topic名
  pnh_.getParam("roadmap_path", roadmap_path);    //读取路网文件名
  pnh_.getParam("path_vis_topic", path_vis_topic);  //读取可视化路网名
  pnh_.getParam("target_speed", target_speed);      //读取目标速度
  pnh_.getParam("goal_tolerance", goalTolerance_);  //读取目标速度
  pnh_.getParam("speed_P", speed_P);                //读取PID参数
  pnh_.getParam("speed_I", speed_I);
  pnh_.getParam("speed_D", speed_D);
  pnh_.getParam("control_frequency", controlFrequency_);  //读取控制的频率
  pnh_.getParam("vis_frequency", vis_frequency);  //读取路网显示的频率
  pnh_.getParam("frame_id", frame_id);            //读取全局坐标系名

  //加载路网文件
  if (!loadRoadmap(roadmap_path, target_speed)) return false;
  speedPidControllerPtr_ = std::shared_ptr<PIDController>(
      new PIDController(speed_P, speed_I, speed_D));
  lqrController_ = std::shared_ptr<LqrController>(new LqrController());
  lqrController_->LoadControlConf();
  lqrController_->Init();
  roadmapMarkerPtr_ =
      std::shared_ptr<RosVizTools>(new RosVizTools(nh_, path_vis_topic));

  VehiclePoseSub_ = nh_.subscribe(vehicle_odom_topic, 10,
                                  &LQRControllerNode::odomCallback, this);
  controlPub_ =
      nh_.advertise<lgsvl_msgs::VehicleControlData>(vehicle_cmd_topic, 1000);

  visTimer_ = nh_.createTimer(ros::Duration(1 / vis_frequency),
                              &LQRControllerNode::visTimerLoop,
                              this);  //注册可视化线程
  controlTimer_ = nh_.createTimer(ros::Duration(1 / controlFrequency_),
                                  &LQRControllerNode::controlTimerLoop,
                                  this);  //这侧控制线程
  addRoadmapMarker(planningPublishedTrajectory_.trajectory_points, frame_id);
  goalPoint_ =planningPublishedTrajectory_.trajectory_points.back();  //确定目标点
  ROS_INFO("lqr_control_node init finish!");
  return true;
}

double LQRControllerNode::pid_control() {
  double ego_speed = vehicleState_.velocity;
  // 位置误差
  double v_err = targetSpeed_ - ego_speed;  // 速度误差
  cout << "v_err: " << v_err << "targetSpeed_ is " << targetSpeed_ << endl;
  double acceleration_cmd =
      speedPidControllerPtr_->Control(v_err, 1 / controlFrequency_);
  return acceleration_cmd;
};

void LQRControllerNode::odomCallback(const nav_msgs::Odometry::ConstPtr& msg) {
  // cout << "position.x: " << msg->pose.pose.position.x << " " <<
  // "position.y: " << msg->pose.pose.position.y << endl;
  if (firstRecord_) {
    vehicleState_.planning_init_x = msg->pose.pose.position.x;
    vehicleState_.planning_init_y = msg->pose.pose.position.y;
    firstRecord_ = false;
  }
  vehicleState_.x = msg->pose.pose.position.x;  //
  vehicleState_.y = msg->pose.pose.position.y;

  // 将orientation(四元数)转换为欧拉角(roll, pitch, yaw)
  tf::Quaternion q;
  tf::quaternionMsgToTF(msg->pose.pose.orientation, q);
  tf::Matrix3x3(q).getRPY(vehicleState_.roll, vehicleState_.pitch,vehicleState_.yaw);

  vehicleState_.heading = vehicleState_.yaw;  // pose.orientation是四元数
  // cout << "vehicle_state_.heading: " << vehicle_state_.heading << endl;

  vehicleState_.velocity =  // 速度
      std::sqrt(msg->twist.twist.linear.x * msg->twist.twist.linear.x +
                msg->twist.twist.linear.y * msg->twist.twist.linear.y);
  vehicleState_.angular_velocity =  // 转角速度
      std::sqrt(msg->twist.twist.angular.x * msg->twist.twist.angular.x +
                msg->twist.twist.angular.y * msg->twist.twist.angular.y);
  vehicleState_.acceleration = 0.0;  // 加速度
}

bool LQRControllerNode::loadRoadmap(const std::string& roadmap_path,
                                    const double target_speed) {
  // 读取参考线路径
  std::ifstream infile;
  infile.open(roadmap_path);  //将文件流对象与文件连接起来
  if (!infile.is_open()) {
    return false;
  }
  std::vector<std::pair<double, double>> xy_points;
  std::string s, x, y;
  while (getline(infile, s)) {
    std::stringstream word(s);
    word >> x;
    word >> y;
    double pt_x = std::atof(x.c_str());
    double pt_y = std::atof(y.c_str());
    xy_points.push_back(std::make_pair(pt_x, pt_y));
  }
  infile.close();
  // Construct the reference_line path profile
  using namespace shenlan::control;
  std::vector<double> headings, accumulated_s, kappas, dkappas;
  //根据离散的点组成的路径，生成路网航向角,累计距离，曲率，曲率的导数
  std::unique_ptr<ReferenceLine> reference_line =
      std::make_unique<ReferenceLine>(xy_points);
  reference_line->ComputePathProfile(&headings, &accumulated_s, &kappas,
                                     &dkappas);

  for (size_t i = 0; i < headings.size(); i++) {
    TrajectoryPoint trajectory_pt;
    trajectory_pt.x = xy_points[i].first;
    trajectory_pt.y = xy_points[i].second;
    trajectory_pt.v = target_speed;
    trajectory_pt.a = 0.0;
    trajectory_pt.heading = headings[i];
    trajectory_pt.kappa = kappas[i];
    planningPublishedTrajectory_.trajectory_points.push_back(trajectory_pt);
  }
  return true;
}
void LQRControllerNode::addRoadmapMarker(
    const std::vector<TrajectoryPoint>& path, const std::string& frame_id) {
  roadmapMarkerPtr_->clear();
  std::string ns = "reference_path";
  visualization_msgs::Marker marker_linestrip = RosVizTools::newLineStrip(
      0.02, ns, 0, ros_viz_tools::LIGHT_BLUE, frame_id);
  for (auto path_point : path) {
    geometry_msgs::Point p;
    p.x = path_point.x;
    p.y = path_point.y;
    p.z = 0;
    marker_linestrip.points.push_back(p);
  }
  std::cout << "path size is " << marker_linestrip.points.size() << std::endl;
  roadmapMarkerPtr_->append(marker_linestrip);
  return;
}
void LQRControllerNode::visTimerLoop(const ros::TimerEvent&) {
  // std::cout << "publish path vis " << std::endl;
  roadmapMarkerPtr_->publish();
}
void LQRControllerNode::controlTimerLoop(const ros::TimerEvent&) {
  ControlCmd cmd;
  if (!firstRecord_) {  //有定位数据开始控制

    //小于容忍距离，车辆速度设置为0
    if (pointDistance(goalPoint_, vehicleState_.x, vehicleState_.y) <
        goalTolerance_) {
      targetSpeed_ = 0;
      isReachGoal_ = true;
    }

    if (!isReachGoal_) {
      lqrController_->ComputeControlCommand(vehicleState_,
                                            planningPublishedTrajectory_, cmd);
    }

    lgsvl_msgs::VehicleControlData control_cmd;
    control_cmd.header.stamp = ros::Time::now();
    double acc_cmd = pid_control();
    control_cmd.acceleration_pct = acc_cmd;
    control_cmd.target_gear = lgsvl_msgs::VehicleControlData::GEAR_DRIVE;
    control_cmd.target_wheel_angle = cmd.steer_target;
    controlPub_.publish(control_cmd);
  }
}
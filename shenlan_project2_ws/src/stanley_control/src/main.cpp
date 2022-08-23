#include "stanley_control.h"
#include "pid_controller.h"

// Input（输入，车辆状态）
VehicleState vehicle_state_;

using namespace std;

bool first_record_ = false;//第一次记录标志
double V_set_ = 5.0;//目标速度

double wheelbase_ = 2.852;//车辆轴距
double car_length_ = 2.852;//车辆长度

shenlan::control::PIDController speed_pid_controller(0.5, 0.0, 0.0);//速度控制器
//计算两点之间的距离
double PointDistance(const TrajectoryPoint &point, const double x,
                           const double y) {
  const double dx = point.x - x;
  const double dy = point.y - y;
  return  sqrt(dx * dx + dy * dy);
}

double pid_control() {
  double ego_speed = std::sqrt(vehicle_state_.vx * vehicle_state_.vx +  // 计算本车速度
                                vehicle_state_.vy * vehicle_state_.vy);

  // 速度误差
  double v_err = V_set_ - ego_speed;                
  
  cout << "v_err: " << v_err << endl;
  //根据速度误差计算加速指令
  double acceleration_cmd = speed_pid_controller.Control(v_err, 0.01);
  return acceleration_cmd;
};
//回调函数
void odomCallback(const nav_msgs::Odometry::ConstPtr& msg) {
  if(!first_record_) first_record_ = true; //更新第一次记录标志的值
  // ROS_ERROR("I heard: [%f]", msg->pose.pose.position.x);
  //将消息中的车速数据赋值给车辆状态对象
  vehicle_state_.vx = msg->twist.twist.linear.x;
  vehicle_state_.vy = msg->twist.twist.linear.y;

  // 将orientation(四元数)转换为欧拉角(roll, pitch, yaw)
  tf::Quaternion q; 
  tf::quaternionMsgToTF(msg->pose.pose.orientation, q);
  tf::Matrix3x3(q).getRPY(vehicle_state_.roll, vehicle_state_.pitch, vehicle_state_.yaw);
  //将消息中的横摆角数据赋值给车辆状态对象
  vehicle_state_.heading = vehicle_state_.yaw;    // pose.orientation是四元数
  // cout << "vehicle_state_.heading: " << vehicle_state_.heading << endl;

  // 将位置转移到前车轮的中心点
  vehicle_state_.x = msg->pose.pose.position.x + std::cos(vehicle_state_.heading) * 0.5 * car_length_; 
  vehicle_state_.y = msg->pose.pose.position.y + std::sin(vehicle_state_.heading) * 0.5 * wheelbase_;

  // cout << "vehicle_state_.heading: " << vehicle_state_.heading << endl;
  //车辆线速度计算
  vehicle_state_.velocity =
      std::sqrt(msg->twist.twist.linear.x * msg->twist.twist.linear.x +
                msg->twist.twist.linear.y * msg->twist.twist.linear.y);
  //车辆角速度计算
  vehicle_state_.angular_velocity =
      std::sqrt(msg->twist.twist.angular.x * msg->twist.twist.angular.x +
                msg->twist.twist.angular.y * msg->twist.twist.angular.y);
  //保持匀速
  vehicle_state_.acceleration = 0.0;
}

int main(int argc, char** argv) {
  // // Construct the reference line
  // std::shared_ptr<zjlmap::Map> map_data_ = std::make_shared<zjlmap::Map>();
  // int handle = 0;
  // zjlmap::ErrorCode ec =
  //   map_data_->load("src/maps/TestMap.xodr", handle);
  // ROS_ERROR("I heard: [%d]", ec);
  // zjlmap::LaneId lane_id = {3, 0, 1};
  // zjlmap::LaneInfo lane_info = map_data_->query_lane_info(lane_id);
  // std::vector<zjlmap::TracePoint> reference_line;
  // map_data_->calc_lane_center_line_curv(lane_id, lane_info.begin,
  // lane_info.end, 0.25, reference_line);

  // lane_id = {7, 0, -1};
  // lane_info = map_data_->query_lane_info(lane_id);
  // std::vector<zjlmap::TracePoint> reference_line2;
  // map_data_->calc_lane_center_line_curv(lane_id, lane_info.begin,
  // lane_info.end, 0.25, reference_line2);

  // reference_line.insert(reference_line.end(), reference_line2.begin(),
  // reference_line2.end());

  // for (size_t i=0; i<reference_line.size(); i++)
  // {
  //     ROS_ERROR("reference pt %d,  x: %f, y: %f", i, reference_line[i].x,
  //     reference_line[i].y);
  // }

  // std::ofstream target_line_cout(
  //     "src/stanley_control/data/reference_line.txt");
  // target_line_cout.setf(std::ios::fixed, std::ios::floatfield);
  // target_line_cout.precision(2);
  // for (size_t i = 0; i < reference_line.size(); i++) {
  //     target_line_cout << reference_line[i].x << "  "
  //                     << reference_line[i].y << std::endl;
  // }
  // target_line_cout.close();

  // Read the reference_line txt（读取参考线文件数据）
  std::ifstream infile;
  infile.open(
      "src/stanley_control/data/cube_town_reference_line.txt");  //将文件流对象与文件连接起来
  assert(infile.is_open());  //若失败,则输出错误消息,并终止程序运行

  std::vector<std::pair<double, double>> xy_points;
  std::string s;
  std::string x;
  std::string y;
  //将infile输入流中的内容输入到字符串s中
  while (getline(infile, s)) {
    std::stringstream word(s);//创建存储s的副本的 stringstream 对象word
    word >> x;
    word >> y;
    double pt_x = std::atof(x.c_str());
    double pt_y = std::atof(y.c_str());
    xy_points.push_back(std::make_pair(pt_x, pt_y));
  }
  infile.close();

  // Construct the reference_line path profile(构建参考线路径轮廓)
  std::vector<double> headings;
  std::vector<double> accumulated_s;//用于存储车辆行驶过的路程
  std::vector<double> kappas;
  std::vector<double> dkappas;
  //make_unique 创建并返回 unique_ptr 至指定类型的对象
  std::unique_ptr<shenlan::control::ReferenceLine> reference_line =
      std::make_unique<shenlan::control::ReferenceLine>(xy_points);
  reference_line->ComputePathProfile(&headings, &accumulated_s, &kappas,
                                     &dkappas);

  for (size_t i = 0; i < headings.size(); i++) {
    std::cout << "pt " << i << "   heading: " << headings[i]
              << "  acc_s: " << accumulated_s[i] << "   kappa: " << kappas[i]
              << "  dkappas: " << dkappas[i] << std::endl;
  }

  // Construct the planning trajectory（构建规划轨迹）
  TrajectoryData planning_published_trajectory;
  for (size_t i = 0; i < headings.size(); i++) {
    TrajectoryPoint trajectory_pt;
    trajectory_pt.x = xy_points[i].first;
    trajectory_pt.y = xy_points[i].second;
    trajectory_pt.v = 2.0;
    trajectory_pt.a = 0.0;
    trajectory_pt.heading = headings[i];
    trajectory_pt.kappa = kappas[i];

    planning_published_trajectory.trajectory_points.push_back(trajectory_pt);
  }
  //轨迹目标点/终点
  TrajectoryPoint goal_point = planning_published_trajectory.trajectory_points.back();

  ros::init(argc, argv, "control_pub");
  ros::NodeHandle nh;
  ROS_ERROR("init !");
  ros::Subscriber sub = nh.subscribe("/odom", 10, odomCallback);
  ros::Publisher control_pub =
      nh.advertise<lgsvl_msgs::VehicleControlData>("/vehicle_cmd", 1000);

  // Stanley control part（Stanley控制部分）
  ControlCmd cmd;//横向控制命令
  std::unique_ptr<shenlan::control::StanleyController> stanley_controller =
      std::make_unique<shenlan::control::StanleyController>();
  stanley_controller->LoadControlConf();

  ros::Rate loop_rate(100);
  while (ros::ok()) {
    if(first_record_) { 
      //距离终点0.5m停止
      if(PointDistance(goal_point, vehicle_state_.x, vehicle_state_.y) < 0.5){
          V_set_ = 0;
      }
      //计算控制命令，仅用于控制横向运动
      stanley_controller->ComputeControlCmd(vehicle_state_,planning_published_trajectory, cmd);
      
      lgsvl_msgs::VehicleControlData control_cmd;
      control_cmd.header.stamp = ros::Time::now();
      //加速命令
      double acc_cmd = pid_control();

      control_cmd.acceleration_pct = acc_cmd;
      control_cmd.target_gear = lgsvl_msgs::VehicleControlData::GEAR_DRIVE;//目标档位
      control_cmd.target_wheel_angle = cmd.steer_target;//目标转向角
      //节点发布控制指令
      control_pub.publish(control_cmd);
    }
    //cout << "control_cmd.target_wheel_angle: " << control_cmd.target_wheel_angle << endl;
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}

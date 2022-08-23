#include "mpc_controller.h"

using namespace std;
bool first_record_ = true;

// Input
VehicleState vehicle_state_;

ControlCmd cmd_pub;
ros::Publisher acc_pub;

void IMUCallback(const sensor_msgs::Imu::ConstPtr& msg) {
  
  vehicle_state_.angular_velocity = msg->angular_velocity.z;  // 角速度(绕z轴转动的角速度)

  vehicle_state_.acceleration = sqrt(msg->linear_acceleration.x * msg->linear_acceleration.x + 
                                msg->linear_acceleration.y * msg->linear_acceleration.y);  // 加速度
}

void odomCallback(const nav_msgs::Odometry::ConstPtr& msg) {
  // cout << "position.x: " << msg->pose.pose.position.x << " " << "position.y: " << msg->pose.pose.position.y << endl;
  if(first_record_) {
    vehicle_state_.planning_init_x = msg->pose.pose.position.x;
    vehicle_state_.planning_init_y = msg->pose.pose.position.y;
    first_record_ = false;
  }
  vehicle_state_.last_velocity = vehicle_state_.velocity;
  vehicle_state_.last_v_time = vehicle_state_.cur_v_time;
  vehicle_state_.last_v_err = vehicle_state_.last_velocity - 5;


  vehicle_state_.x = msg->pose.pose.position.x;   //
  vehicle_state_.y = msg->pose.pose.position.y;

  // 将orientation(四元数)转换为欧拉角(roll, pitch, yaw)
  tf::Quaternion q; 
  tf::quaternionMsgToTF(msg->pose.pose.orientation, q);
  tf::Matrix3x3(q).getRPY(vehicle_state_.roll, vehicle_state_.pitch, vehicle_state_.yaw);
  
  vehicle_state_.heading = vehicle_state_.yaw;    // pose.orientation是四元数
  //cout << "vehicle_state_.heading: " << vehicle_state_.heading << endl;
  
  vehicle_state_.velocity = // 速度
      std::sqrt(msg->twist.twist.linear.x * msg->twist.twist.linear.x +
                msg->twist.twist.linear.y * msg->twist.twist.linear.y);

  vehicle_state_.cur_v_err = vehicle_state_.velocity - 5;

  vehicle_state_.cur_v_time = ros::Time::now().toSec();
}

int main(int argc, char** argv) {
  // Read the reference_line txt
  std::ifstream infile;
  infile.open(
      "src/mpc_control/data/reference_line.txt");  //将文件流对象与文件连接起来
  assert(infile.is_open());  //若失败,则输出错误消息,并终止程序运行

  std::vector<std::pair<double, double>> xy_points;
  std::string s;
  std::string x;
  std::string y;
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
  std::vector<double> headings;
  std::vector<double> accumulated_s;
  std::vector<double> kappas;
  std::vector<double> dkappas;
  std::unique_ptr<shenlan::control::ReferenceLine> reference_line =
      std::make_unique<shenlan::control::ReferenceLine>(xy_points);
  reference_line->ComputePathProfile(&headings, &accumulated_s, &kappas,
                                     &dkappas);

  /* for (size_t i = 0; i < headings.size(); i++) {
    std::cout << "pt " << i << " heading: " << headings[i]
              << " acc_s: " << accumulated_s[i] << " kappa: " << kappas[i]
              << " dkappas: " << dkappas[i] << std::endl;
  } */

  // Construct the planning trajectory
  TrajectoryData planning_published_trajectory;
  for (size_t i = 0; i < headings.size(); i++) {
    TrajectoryPoint trajectory_pt;
    trajectory_pt.x = xy_points[i].first;
    trajectory_pt.y = xy_points[i].second;
    trajectory_pt.v = 5.0;
    trajectory_pt.a = 0.0;
    trajectory_pt.heading = headings[i];
    trajectory_pt.kappa = kappas[i];

    planning_published_trajectory.trajectory_points.push_back(trajectory_pt);
  }

  ros::init(argc, argv, "control_pub");
  ros::NodeHandle nh;
  ROS_INFO("init !");
  ros::Subscriber sub = nh.subscribe("/odom", 10, odomCallback);

  ros::Subscriber sub_imu = nh.subscribe("/imu_raw", 10, IMUCallback);
  ros::Publisher control_pub =
      nh.advertise<lgsvl_msgs::VehicleControlData>("/vehicle_cmd", 1000);

  
  acc_pub = nh.advertise<lgsvl_msgs::VehicleControlData>("/acc_pub_cmd", 1000);


  // Lqr control part
  ControlCmd cmd;
  std::unique_ptr<shenlan::control::MPCController> mpc_controller =
      std::make_unique<shenlan::control::MPCController>();
  mpc_controller->Init();
  lgsvl_msgs::VehicleControlData control_cmd;
  lgsvl_msgs::VehicleControlData control_cmd_pub; 

  ros::Rate loop_rate(100);
  while (ros::ok()) {
    mpc_controller->ComputeControlCommand(vehicle_state_,
                                        planning_published_trajectory, cmd);
    control_cmd.header.stamp = ros::Time::now();
    //cout << "cmd.acc" << cmd.acc << endl;
    //cout << "vehicle_state_.acceleration: " << vehicle_state_.acceleration << endl;
    
    cout << "vehical_state_.last_v_err: " << vehicle_state_.last_v_err << endl;
    cout << "vehical_state_.cur_v_err: " << vehicle_state_.cur_v_err << endl;

    cout << "cur_acc: "  << (vehicle_state_.cur_v_err - vehicle_state_.last_v_err) / (vehicle_state_.cur_v_time - vehicle_state_.last_v_time) << endl;
    cout << "cmd.acc: "  << cmd.acc << endl;
    control_cmd.acceleration_pct = cmd.acc;
    control_cmd.target_gear = lgsvl_msgs::VehicleControlData::GEAR_DRIVE;
    control_cmd.target_wheel_angle = -cmd.steer_target;

    control_pub.publish(control_cmd);

    control_cmd_pub.acceleration_pct = vehicle_state_.acceleration;
    
    acc_pub.publish(control_cmd_pub);

    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}

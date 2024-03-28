#include "common.h"
#include "pid_controller.h"
#include <fstream>
#include <algorithm>

using namespace std;
// Param
double V_set_ = 10.0;
double T_gap_ = 2.0;

// Input
VehicleState vehicle_state_;

bool first_record_ = true;
bool cout_distance_ = true;
bool cout_speed_ = true;

int cnt = 0;
// Controller
shenlan::control::PIDController speed_pid_controller(0.5, 0.3, 0.1);      // 纵向 pid
shenlan::control::PIDController lateral_pid_controller(0.01, 0.0, 0.0);   // 横向 pid
shenlan::control::PIDController yaw_pid_controller(0.0, 0.0, 0.0);        // 横摆角 pid

std::vector<TrajectoryPoint> trajectory_points_;
TrajectoryData planning_published_trajectory;

// 两点之间的距离
double PointDistanceSquare(const TrajectoryPoint &point, const double x,
                           const double y) 
{  
  double dx = point.x - x;
  double dy = point.y - y;
  return dx * dx + dy * dy;
}

TrajectoryPoint QueryNearestPointByPosition(const double x, const double y) 
{
  double d_min = PointDistanceSquare(trajectory_points_.front(), x, y);
  size_t index_min = 0;

  for (size_t i = 1; i < trajectory_points_.size(); ++i) 
  {
    double d_temp = PointDistanceSquare(trajectory_points_[i], x, y);
    
    if (d_temp < d_min) 
    {
      d_min = d_temp;
      index_min = i;
    }
  }
  // cout << "vehicle.x: " << x << " " << "vehicle.y: " << y << endl; 
  // cout << "trajectory_points.x: " << trajectory_points_[index_min].x << " " << "trajectory_points.y: " << trajectory_points_[index_min].y;
  // cout << " index_min: " << index_min << endl;
  // cout << "tarjectory.heading: " << trajectory_points_[index_min].heading << endl;

  return trajectory_points_[index_min];
}

// 订阅 Odom 消息，并将其存储至 vehicle_state_
void odomCallback(const nav_msgs::Odometry::ConstPtr& msg) {
  // ROS_INFO("I heard: [%f]", msg->pose.pose.position.x);
  tf::Quaternion q; 
  tf::quaternionMsgToTF(msg->pose.pose.orientation, q);
  tf::Matrix3x3(q).getRPY(vehicle_state_.roll, vehicle_state_.pitch, vehicle_state_.yaw);

  if (first_record_) 
  {
    vehicle_state_.start_point_x = msg->pose.pose.position.x;
    vehicle_state_.start_point_x = msg->pose.pose.position.x;
    //vehicle_state_.start_heading = vehicle_state_.yaw;
    vehicle_state_.start_heading = -M_PI / 2;
    first_record_ = false;
  }
  vehicle_state_.x = msg->pose.pose.position.x;
  vehicle_state_.y = msg->pose.pose.position.y;
  vehicle_state_.vx = msg->twist.twist.linear.x;
  vehicle_state_.vy = msg->twist.twist.linear.y;

  vehicle_state_.v = std::sqrt(vehicle_state_.vx * vehicle_state_.vx +  // 本车速度
                                vehicle_state_.vy * vehicle_state_.vy);

  // 将orientation(四元数)转换为欧拉角(roll, pitch, yaw)
  
  vehicle_state_.heading = vehicle_state_.yaw;    // pose.orientation是四元数
}

int main(int argc, char** argv) 
{
  ros::init(argc, argv, "control_pub");
  ros::NodeHandle nh;
  ROS_INFO("init !");

  // 订阅车辆的位置信息
  ros::Subscriber sub = nh.subscribe("/carla/ego_vehicle/odometry", 10, odomCallback);
  
  // 通过话题 "/carla/ego_vehicle/vehicle_control_cmd" 发布控制指令
  // 控制指令的消息类型为 carla_msgs:CarlaEgoVehicleControl
  // 有关该消息的具体内容可参考官方文档： https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_msgs/
  ros::Publisher control_pub =
      nh.advertise<carla_msgs::CarlaEgoVehicleControl>("/carla/ego_vehicle/vehicle_control_cmd", 1000);
   
  carla_msgs::CarlaEgoVehicleControl control_cmd;
  control_cmd.header.stamp = ros::Time::now();
  control_cmd.reverse = false;
  control_cmd.manual_gear_shift = false;
  control_cmd.hand_brake = false;
  control_cmd.gear = 0;
  control_cmd.throttle = 0.0;
  control_cmd.brake = 0.0;
  control_cmd.steer = 0.0;

  // 读取参考线路径
  std::ifstream infile;
  infile.open(
      "src/vehicle_control/data/reference_line_Town01.txt"); //将文件流对象与文件连接起来
  assert(infile.is_open());                                  //若失败,则输出错误消息,并终止程序运行

  std::vector<std::pair<double, double>> xy_points;
  std::string s;
  std::string x;
  std::string y;
  
  while (getline(infile, s)) 
  {
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

  for (size_t i = 0; i < headings.size(); i++) 
  {
    TrajectoryPoint trajectory_pt;
    trajectory_pt.x = xy_points[i].first;
    trajectory_pt.y = xy_points[i].second;
    trajectory_pt.v = 10.0;
    trajectory_pt.a = 0.0;
    trajectory_pt.heading = headings[i];
    trajectory_pt.kappa = kappas[i];

    planning_published_trajectory.trajectory_points.push_back(trajectory_pt);
  }

  // 简单规划下到终点时的速度
  double v_temp = 0.0;

  for (size_t i = headings.size(); i > headings.size() - 5; i--)
  {
    planning_published_trajectory.trajectory_points[i].v = v_temp;
  }

  trajectory_points_ = planning_published_trajectory.trajectory_points;

  // 初始化油门和方向盘转角指令
  double throttle_or_brake_cmd = 0.0;
  double steer_cmd = 0.0;

  ros::Rate loop_rate(100);  // 设置程序循环的周期是100/s

  while(ros::ok()) {
    
    TrajectoryPoint target_point_;

    target_point_ = QueryNearestPointByPosition(vehicle_state_.x, vehicle_state_.y);

    cout << "target_v: " << target_point_.v << endl;

    double v_err = target_point_.v - vehicle_state_.v;               // 速度误差
    double yaw_err = vehicle_state_.heading - target_point_.heading; // 横摆角误差
    double lat_err = target_point_.y - vehicle_state_.y;             // 横向误差

    if (yaw_err > M_PI / 6) 
    {
      yaw_err = M_PI / 6;
    }
    else if (yaw_err < -M_PI / 6)
    {
      yaw_err = -M_PI / 6;
    }
    
    // 计算油门/制动踏板开度
    throttle_or_brake_cmd = speed_pid_controller.Control(v_err, 0.05);
    
    // 一简陋的横向控制器
    steer_cmd = lateral_pid_controller.Control(lat_err, 0.05) + yaw_pid_controller.Control(yaw_err, 0.05);    
    
    cout << "longitudinal control: " << throttle_or_brake_cmd << endl;
    cout << "lateral error :" << lat_err << endl;
    cout << "yaw error: " << yaw_err << endl;
    cout << "steer control: " << steer_cmd << endl;
    cout << endl;

    // 限制油门和制动的输出
    if (throttle_or_brake_cmd >= 0)
    {
      control_cmd.throttle = min(1.0, throttle_or_brake_cmd);
      control_cmd.brake = 0.0;
    } 
    else
    {
      control_cmd.throttle = 0.0;
      control_cmd.brake = min(1.0, -throttle_or_brake_cmd);
    }

    if (target_point_.v == 0)
    {
      control_cmd.throttle = 0.0;
    } 

    control_cmd.steer = steer_cmd;
    
    // 发布控制指令
    control_pub.publish(control_cmd);
    ros::spinOnce();
    loop_rate.sleep();  // 设置程序循环的周期是100/s
    cnt++;
  }

  return 0;
}

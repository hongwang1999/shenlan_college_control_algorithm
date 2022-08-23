#include "ros/ros.h"
#include <nav_msgs/Odometry.h>
#include <lgsvl_msgs/VehicleControlData.h>
#include "common.h"

VehicleState vehicle_state_;

std::ofstream target_line_cout(
        "/home/li/stanly_ws/src/localization/data/cube_town_record_line.txt");

using namespace std;
void odomCallback(const nav_msgs::Odometry::ConstPtr& msg)
{
    cout << "x: "<<msg->pose.pose.position.x << " " << "y: " << msg->pose.pose.position.y << endl;
    // 将orientation(四元数)转换为欧拉角(roll, pitch, yaw)
  
  tf::Quaternion q; 
  tf::quaternionMsgToTF(msg->pose.pose.orientation, q);
  tf::Matrix3x3(q).getRPY(vehicle_state_.roll, vehicle_state_.pitch, vehicle_state_.yaw);
  
  vehicle_state_.heading = vehicle_state_.yaw;    // pose.orientation是四元数
  cout << "vehicle_state_.heading: " << vehicle_state_.heading << endl;
  
  target_line_cout << msg->pose.pose.position.x << "  " << msg->pose.pose.position.y << std::endl;
}

int main(int argc, char** argv) {
    ros::init(argc,argv,"control_pub");
    ros::NodeHandle nh;
    ROS_INFO("init !");   
    ros::Subscriber sub = nh.subscribe("/odom", 10, odomCallback);
    //target_line_cout.setf(std::ios::fixed, std::ios::floatfield);
    //target_line_cout.precision(2);
    /* ros::Publisher control_pub = nh.advertise<lgsvl_msgs::VehicleControlData>("/vehicle_cmd", 1000);
    
    ros::Rate loop_rate(100);
    while(ros::ok()) { 
      lgsvl_msgs::VehicleControlData control_cmd;
      control_cmd.header.stamp = ros::Time::now();
      control_cmd.acceleration_pct = 0.3;
      control_cmd.target_gear = lgsvl_msgs::VehicleControlData::GEAR_DRIVE;
      control_cmd.target_wheel_angle = 0.5;
      cout << "control_cmd.target_wheel_angle: " << control_cmd.target_wheel_angle << endl;
      control_pub.publish(control_cmd);
    } */

    ros::spin();
    return 0;
}
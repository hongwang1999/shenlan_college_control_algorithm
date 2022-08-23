#include "vehicle_control.h"

// Param
double D_default_ = 15.0;
double D_set_ = 25.0;
double V_set_ = 10.0;
double T_gap_ = 2.0;
double D_relative_ = 20; // This should be subsribe from simulator

// Input 
VehicleState vehicle_state_;

// Controller 
shenlan::control::PIDController dis_pid_controller(1.0, 0.3, 0.0);
shenlan::control::PIDController speed_pid_controller(1.0, 0.3, 0.0);

void odomCallback(const nav_msgs::Odometry::ConstPtr& msg)
{
    ROS_ERROR("I heard: [%f]", msg->pose.pose.position.x);
    vehicle_state_.x = msg->pose.pose.position.x;
    vehicle_state_.y = msg->pose.pose.position.y;
    vehicle_state_.vx = msg->twist.twist.linear.x;
    vehicle_state_.vy = msg->twist.twist.linear.y;
}

int main(int argc,char **argv){
    ros::init(argc,argv,"control_pub");
    ros::NodeHandle nh;
    ROS_ERROR("init !");   
    ros::Subscriber sub = nh.subscribe("/odom", 10, odomCallback);     
    ros::Publisher control_pub = nh.advertise<lgsvl_msgs::VehicleControlData>("/vehicle_cmd",1000);

    // ACC control 
    double ego_speed = std::sqrt(vehicle_state_.vx *vehicle_state_.vx  + vehicle_state_.vy * vehicle_state_.vy);
    double d_err = D_relative_ - D_set_;
    double v_err = ego_speed - V_set_;
    double D_safe = D_default_ + T_gap_ * ego_speed;

    double acceleration_cmd = 0.0;

    if (D_relative_ < D_safe)
    {
        acceleration_cmd = dis_pid_controller.Control(d_err, 0.01);
    } else 
    {
        acceleration_cmd = speed_pid_controller.Control(v_err, 0.01);
    }


    lgsvl_msgs::VehicleControlData control_cmd;
    control_cmd.header.stamp = ros::Time::now();
    control_cmd.acceleration_pct = acceleration_cmd;
    control_cmd.target_gear = lgsvl_msgs::VehicleControlData::GEAR_DRIVE;

    ros::Rate loop_rate(100);
    while(ros::ok())
    {
        control_pub.publish(control_cmd);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}

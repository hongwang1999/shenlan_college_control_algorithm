#include "ros/ros.h"
#include <iostream>
#include <lgsvl_msgs/VehicleControlData.h>
#include <std_msgs/Header.h>
#include <nav_msgs/Odometry.h>

#include "pid_controller.h"

struct VehicleState {
    double x;
    double y;
    double heading;
    double kappa;
    double vx;
    double vy;

};

#include <fstream>
#include <iostream>
#include <string>

#include <lgsvl_msgs/VehicleControlData.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Header.h>

#include "map.h"
#include "reference_line.h"
#include "ros/ros.h"

struct VehicleState {
  double x;
  double y;
  double heading;
  double kappa;
  double velocity;
  double angular_velocity;
  double acceleration;
};

struct TrajectoryPoint {
  double x;
  double y;
  double heading;
  double kappa;
  double v;
  double a;
};

struct TrajectoryData {
  std::vector<TrajectoryPoint> trajectory_points;
};

struct LateralControlError {
  double lateral_error;
  double heading_error;
  double lateral_error_rate;
  double heading_error_rate;
};


struct ControlCmd {
  double steer_target;
  double acc;
};

typedef std::shared_ptr<LateralControlError> LateralControlErrorPtr;
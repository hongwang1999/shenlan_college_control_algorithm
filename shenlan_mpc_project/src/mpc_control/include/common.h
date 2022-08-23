#include <fstream>
#include <iostream>
#include <string>

#include <lgsvl_msgs/VehicleControlData.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Header.h>
#include <sensor_msgs/Imu.h>


#include "map.h"
#include "reference_line.h"
#include "ros/ros.h"
#include "tf/tf.h"

struct VehicleState {
  double x;
  double y;
  double heading;   // 车辆朝向
  double kappa;     // 曲率(切线斜率)
  double velocity;    // 速度
  double angular_velocity;  // 角速度
  double acceleration;    // 加速度

  // 规划起点
  double planning_init_x; 
  double planning_init_y;

  double roll;  
  double pitch;
  double yaw;

  double target_curv;  // 期望点的曲率

  double vx;
  double vy;

  // added
  double start_point_x;
  double start_point_y;

  double relative_x = 0;
  double relative_y = 0;

  double relative_distance = 0;

  double last_velocity = 0;
  
  double last_v_err = 0;
  double cur_v_err = 0;

  double last_v_time = 0;
  double cur_v_time = 0;

  double last_acc = 0;
  double cur_acc = 0;
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
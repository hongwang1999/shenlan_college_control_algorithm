#include "mpc_controller.h"

#include <algorithm>
#include <iomanip>
#include <utility>
#include <vector>

#include "Eigen/LU"
#include "math.h"

using namespace std;

namespace shenlan {
namespace control {

MPCController::MPCController() {}

MPCController::~MPCController() {}

void MPCController::LoadControlConf() {
  ts_ = 0.01;
  cf_ = 155493.663;
  cr_ = 155493.663;
  wheelbase_ = 1.0;
  steer_ratio_ = 1.0;
  steer_single_direction_max_degree_ = 40.0;
  max_lat_acc_ = 5.0;

  wheel_single_direction_max_degree_ =
      steer_single_direction_max_degree_ / steer_ratio_ / 180 * M_PI;
  max_acceleration_ = 0.8;
  max_deceleration_ = -0.8;

  const double mass_fl = 55.0;
  const double mass_fr = 55.0;
  const double mass_rl = 65.0;
  const double mass_rr = 65.0;
  const double mass_front = mass_fl + mass_fr;
  const double mass_rear = mass_rl + mass_rr;
  mass_ = mass_front + mass_rear;

  lf_ = wheelbase_ * (1.0 - mass_front / mass_);
  lr_ = wheelbase_ * (1.0 - mass_rear / mass_);

  // moment of inertia
  iz_ = lf_ * lf_ * mass_front + lr_ * lr_ * mass_rear;

  mpc_eps_ = 0.01;
  mpc_max_iteration_ = 1500;
  return;
}

void MPCController::Init() {
  LoadControlConf();

  // Matrix init operations.
  matrix_a_ = Matrix::Zero(basic_state_size_, basic_state_size_);
  matrix_ad_ = Matrix::Zero(basic_state_size_, basic_state_size_);
  matrix_a_(0, 1) = 1.0;
  matrix_a_(1, 2) = (cf_ + cr_) / mass_;
  matrix_a_(2, 3) = 1.0;
  matrix_a_(3, 2) = (lf_ * cf_ - lr_ * cr_) / iz_;
  matrix_a_(4, 5) = 1;
  matrix_a_(5, 5) = 0.0;

  matrix_a_coeff_ = Matrix::Zero(basic_state_size_, basic_state_size_);
  matrix_a_coeff_(1, 1) = -(cf_ + cr_) / mass_;
  matrix_a_coeff_(1, 3) = (lr_ * cr_ - lf_ * cf_) / mass_;
  matrix_a_coeff_(2, 3) = 1.0;
  matrix_a_coeff_(3, 1) = (lr_ * cr_ - lf_ * cf_) / iz_;
  matrix_a_coeff_(3, 3) = -1.0 * (lf_ * lf_ * cf_ + lr_ * lr_ * cr_) / iz_;

  matrix_b_ = Matrix::Zero(basic_state_size_, controls_);
  matrix_bd_ = Matrix::Zero(basic_state_size_, controls_);
  matrix_b_(1, 0) = cf_ / mass_;
  matrix_b_(3, 0) = lf_ * cf_ / iz_;
  matrix_b_(4, 1) = 0.0;
  matrix_b_(5, 1) = -1.0;
  //matrix_b_(5, 1) = 1.0;
  matrix_bd_ = matrix_b_ * ts_;

  matrix_state_ = Matrix::Zero(basic_state_size_, 1);

  matrix_r_ = Matrix::Identity(controls_, controls_);
  matrix_r_(0, 0) = 3.25;
  matrix_r_(1, 1) = 1.0;

  matrix_q_ = Matrix::Zero(basic_state_size_, basic_state_size_);
  matrix_q_(0, 0) = 3.0;   // 横向误差
  matrix_q_(1, 1) = 0.0;   // 横向误差速率
  matrix_q_(2, 2) = 15.0;  // 朝向误差
  matrix_q_(3, 3) = 0.0;   // 朝向误差速率
  matrix_q_(4, 4) = 0.0;  // 纵向位置误差
  matrix_q_(5, 5) = 10;  // 纵向速度误差

  return;
}

double PointDistanceSquare(const TrajectoryPoint &point, const double x,
                           const double y) {
  const double dx = point.x - x;
  const double dy = point.y - y;
  return dx * dx + dy * dy;
}

double NormalizeAngle(const double angle) {
  double a = std::fmod(angle + M_PI, 2.0 * M_PI);
  if (a < 0.0) {
    a += (2.0 * M_PI);
  }
  return a - M_PI;
}

double MPCController::Wheel2SteerPct(const double wheel_angle) {
  return wheel_angle / wheel_single_direction_max_degree_ * 100;
}

// 计算控制命令
bool MPCController::ComputeControlCommand(
    const VehicleState &localization,
    const TrajectoryData &planning_published_trajectory, ControlCmd &cmd) {
  //轨迹
  trajectory_points_ = planning_published_trajectory.trajectory_points;

  // Update state // 同时计算纵向,横向误差，更新状态空间向量
  UpdateState(localization);

  // 更新状态矩阵A
  UpdateMatrix(localization);

  Matrix control_matrix = Matrix::Zero(controls_, 1);

  Matrix reference_state = Matrix::Zero(basic_state_size_, 1);
  // reference_state(5, 0) = 5;


  // 控制变量的下限
  Matrix lower_bound(controls_, 1);
  lower_bound << -M_PI/6, max_deceleration_;

  // 控制变量的上限
  Matrix upper_bound(controls_, 1);
  upper_bound << M_PI/6, max_acceleration_;

  // 状态变量的上下限
  const double max = std::numeric_limits<double>::max();
  Matrix lower_state_bound(basic_state_size_, 1);
  Matrix upper_state_bound(basic_state_size_, 1);

  // lateral_error, lateral_error_rate, heading_error, heading_error_rate
  // station_error, station_error_rate
  lower_state_bound << -1.0 * max, -1.0 * max, -1.0 * M_PI, -1.0 * max,
      -1.0 * max, -1.0 * max;
  upper_state_bound << max, max, M_PI, max, max, max;

  std::vector<double> control_cmd(controls_, 0);   

  MpcOsqp mpc_osqp(matrix_ad_, matrix_bd_, matrix_q_, matrix_r_,
                   matrix_state_, lower_bound, upper_bound, lower_state_bound,
                   upper_state_bound, reference_state, mpc_max_iteration_,
                   horizon_, mpc_eps_);
  if (!mpc_osqp.Solve(&control_cmd)) {
    //std::cout << "MPC OSQP solver failed" << std::endl;
  } else {
    //std::cout << "MPC OSQP problem solved! " << std::endl;
    control_matrix(0, 0) = control_cmd.at(0);
    control_matrix(1, 0) = control_cmd.at(1);
  }

  double steer_angle_feedback = control_matrix(0, 0);
  double acc_feedback = control_matrix(1, 0);

  // Assign the control cmd
  cmd.steer_target = steer_angle_feedback;
  cmd.acc = acc_feedback;

  return true;
}


void MPCController::UpdateState(const VehicleState &vehicle_state) {
  //std::shared_ptr<LateralControlError> lat_con_err = std::make_shared<LateralControlError>();
  // 智能指针
  std::shared_ptr<LateralControlError> lat_con_err = std::make_shared<LateralControlError>();
  
  ComputeErrors(vehicle_state.x, vehicle_state.y, vehicle_state.heading,
                       vehicle_state.velocity, vehicle_state.angular_velocity,
                       vehicle_state.acceleration, lat_con_err);

  // State matrix update;
  matrix_state_(0, 0) = lat_con_err->lateral_error;   // 横向误差
  matrix_state_(2, 0) = lat_con_err->heading_error;   // 朝向误差
  matrix_state_(1, 0) = lat_con_err->lateral_error_rate;  // 横向误差速率
  matrix_state_(3, 0) = lat_con_err->heading_error_rate;  // 朝向误差速率
  matrix_state_(4, 0) = station_error_;   // 位置误差   
  matrix_state_(5, 0) = speed_error_;     // 速度误差  
}

void MPCController::UpdateMatrix(const VehicleState &vehicle_state) {
  double v;
  v = std::max(vehicle_state.velocity, minimum_speed_protection_);    // 防止速度为0
  matrix_a_(1, 1) = matrix_a_coeff_(1, 1) / v;
  matrix_a_(1, 3) = matrix_a_coeff_(1, 3) / v;
  matrix_a_(3, 1) = matrix_a_coeff_(3, 1) / v;
  matrix_a_(3, 3) = matrix_a_coeff_(3, 3) / v;
  Matrix matrix_i = Matrix::Identity(matrix_a_.cols(), matrix_a_.cols());
  matrix_ad_ = (matrix_i - ts_ * 0.5 * matrix_a_).inverse() * // 将状态矩阵A离散化
               (matrix_i + ts_ * 0.5 * matrix_a_);
}

void MPCController::ComputeErrors(const double x, const double y,
                                         const double theta,
                                         const double linear_v,
                                         const double angular_v,
                                         const double linear_a,
                                         LateralControlErrorPtr& lat_con_err) {
  TrajectoryPoint target_point;
  // 查询距离当前位置距离最近的tagret_point
  target_point = QueryNearestPointByPosition(x, y);



  // cout << "target_point.heading: " << target_point.heading << endl;

  const double dx = x - target_point.x;   // x轴误差
  const double dy = y - target_point.y;   // y轴误差

  const double cos_target_heading = std::cos(target_point.heading);
  const double sin_target_heading = std::sin(target_point.heading);

  double lateral_error = cos_target_heading * dy - sin_target_heading * dx;   //横向误差
  lat_con_err->lateral_error = lateral_error; 

  //cout << "vehical_heading: " << theta << endl;
  //cout << "target_point.heading: " << target_point.heading << endl;

  double heading_error = NormalizeAngle(theta - target_point.heading);    // 将参考轨迹点的朝向和当前车辆的朝向相减，再归化到[-M_PI, M_PI]之间    

  //cout << "heading_error: " << heading_error << endl;
  
  lat_con_err->heading_error = heading_error; 

  auto lateral_error_dot = linear_v * std::sin(heading_error);  
  lat_con_err->lateral_error_rate = lateral_error_dot;

  double ref_heading_rate = target_point.kappa * target_point.v;
  lat_con_err->heading_error_rate = angular_v - ref_heading_rate;

  station_error_ = -(dx * cos_target_heading + dy * sin_target_heading);  // 纵向误差计算

  speed_error_ = target_point.v - linear_v * std::cos(abs(heading_error)) / (1 - target_point.kappa * lateral_error); // 速度误差计算
}

TrajectoryPoint MPCController::QueryNearestPointByPosition(const double x,
                                                           const double y) {
  double d_min = PointDistanceSquare(trajectory_points_.front(), x, y);
  size_t index_min = 0;

  for (size_t i = 1; i < trajectory_points_.size(); ++i) {
    double d_temp = PointDistanceSquare(trajectory_points_[i], x, y);
    if (d_temp < d_min) {
      d_min = d_temp;
      index_min = i;
    }
  }
  return trajectory_points_[index_min];
}


}  // namespace control
}  // namespace shenlan

/**
 * @Author: YunKai Xia
 * @Date:   2022-06-15 16:18:15
 * @Last Modified by:   YunKai Xia
 * @Last Modified time: 2022-06-17 22:42:02
 */
#pragma once
#include <math.h>

#include <fstream>
#include <iomanip>
#include <memory>
#include <string>

#include "Eigen/Core"
#include "common.h"

namespace shenlan {
namespace control {

using Matrix = Eigen::MatrixXd;
//LQR控制器类
class LqrController {
 public:
  LqrController();
  ~LqrController();
  //加载控制配置
  void LoadControlConf();
  void Init();//初始化
  //计算控制命令
  bool ComputeControlCommand(
      const VehicleState &localization,
      const TrajectoryData &planning_published_trajectory, ControlCmd &cmd);

 protected:
  //更新状态
  void UpdateState(const VehicleState &vehicle_state);
  //更新矩阵
  void UpdateMatrix(const VehicleState &vehicle_state);
  //计算前馈
  double ComputeFeedForward(const VehicleState &localization,
                            const double ref_curvature);
  //计算横向误差
  void ComputeLateralErrors(const double x, const double y, const double theta,
                            const double linear_v, const double angular_v,
                            const double linear_a,
                            LateralControlErrorPtr &lat_con_err);
  //求解距离坐标点最近的规划点
  TrajectoryPoint QueryNearestPointByPosition(const double x, const double y);
  //求解LQR问题
  void SolveLQRProblem(const Matrix &A, const Matrix &B, const Matrix &Q,
                       const Matrix &R, const double tolerance,
                       const uint max_num_iteration, Matrix *ptr_K);

  std::vector<TrajectoryPoint> trajectory_points_;

  // the following parameters are vehicle physics related.（以下是车辆物理参数）
  // control time interval（控制时间间隔）
  double ts_ = 0.0;
  // corner stiffness; front（前轮侧偏刚度）
  double cf_ = 0.0;
  // corner stiffness; rear（后轮侧偏刚度）
  double cr_ = 0.0;
  // distance between front and rear wheel center（轴距）
  double wheelbase_ = 0.0;
  // mass of the vehicle（整车质量）
  double mass_ = 0.0;
  // distance from front wheel center to COM（前轴到车辆质心的距离）
  double lf_ = 0.0;
  // distance from rear wheel center to COM（后轴到车辆质心的距离）
  double lr_ = 0.0;
  // rotational inertia（转动惯量）
  double iz_ = 0.0;
  // the ratio between the turn of the steering wheel and the turn of the wheels（方向盘到车轮的传动比）
  double steer_ratio_ = 0.0;
  // the maximum turn of steer（最大方向盘转角）
  double steer_single_direction_max_degree_ = 0.0;

  // number of states without previews（没有前视的状态）, includes
  // lateral error, lateral error rate, heading error, heading error rate
  const int basic_state_size_ = 4;//矩阵阶数 
  // vehicle state matrix（车辆状态矩阵）
  Eigen::MatrixXd matrix_a_;
  // vehicle state matrix (discrete-time)（车辆状态矩阵-离散）
  Eigen::MatrixXd matrix_ad_;
  // control matrix（控制矩阵）
  Eigen::MatrixXd matrix_b_;
  // control matrix (discrete-time)（控制矩阵-离散）
  Eigen::MatrixXd matrix_bd_;
  // gain matrix（增益矩阵）
  Eigen::MatrixXd matrix_k_;
  // control authority weighting matrix（控制权权重矩阵）
  Eigen::MatrixXd matrix_r_;
  // state weighting matrix（状态权重矩阵）
  Eigen::MatrixXd matrix_q_;
  // updated state weighting matrix（更新状态权重矩阵）
  Eigen::MatrixXd matrix_q_updated_;
  // vehicle state matrix coefficients（车辆状态矩阵系数）
  Eigen::MatrixXd matrix_a_coeff_;
  // 4 by 1 matrix; state matrix（状态矩阵）
  Eigen::MatrixXd matrix_state_;

  // parameters for lqr solver; number of iterations（LQR的最大迭代次数）
  int lqr_max_iteration_ = 0;
  // parameters for lqr solver; threshold for computation（LQR 迭代求解精度）
  double lqr_eps_ = 0.0;

  // Look-ahead controller（前视控制器）
  //前视控制器启用开关
  bool enable_look_ahead_back_control_ = false;

  // for compute the differential valute to estimate acceleration/lon_jerk
  //用于计算差分值以估计加速度/纵向
  double previous_lateral_acceleration_ = 0.0;

  double previous_heading_rate_ = 0.0;
  double previous_ref_heading_rate_ = 0.0;

  double previous_heading_acceleration_ = 0.0;
  double previous_ref_heading_acceleration_ = 0.0;

  // for logging purpose（用于记录目的）
  std::ofstream steer_log_file_;

  const std::string name_;

  double query_relative_time_;

  double pre_steer_angle_ = 0.0;

  double pre_steering_position_ = 0.0;
  //最小速度保护
  double minimum_speed_protection_ = 0.1;

  double current_trajectory_timestamp_ = -1.0;

  double init_vehicle_x_ = 0.0;

  double init_vehicle_y_ = 0.0;

  double init_vehicle_heading_ = 0.0;

  double low_speed_bound_ = 0.0;

  double low_speed_window_ = 0.0;

  double driving_orientation_ = 0.0;

  double steer_offset_ = 0.0;

  // added
  double ref_curv_;
};

}  // namespace control
}  // namespace shenlan

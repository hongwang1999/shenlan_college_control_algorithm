/**
 * @Author: YunKai Xia
 * @Date:   2022-06-15 16:18:15
 * @Last Modified by:   YunKai Xia
 * @Last Modified time: 2022-06-18 22:49:26
 */
#include "lqr_controller.h"

#include <algorithm>
#include <iomanip>
#include <utility>
#include <vector>

#include "Eigen/LU"
#include "math.h"

using namespace std;

namespace shenlan {
namespace control {

LqrController::LqrController() {}

LqrController::~LqrController() {}

// lqr的配置
void LqrController::LoadControlConf() {
  ts_ = 0.01;  // 每隔0.01s进行一次控制

  cf_ = 155494.663;    // 前轮侧偏刚度,左右轮之和
  cr_ = 155494.663;    // 后轮侧偏刚度, 左右轮之和
  wheelbase_ = 2.852;  // 左右轮的距离
  steer_ratio_ = 16;  // 方向盘的转角到轮胎转动角度之间的比值系数
  steer_single_direction_max_degree_ = 470.0;  // 最大方向转角

  const double mass_fl = 520;                   // 左前悬的质量
  const double mass_fr = 520;                   // 右前悬的质量
  const double mass_rl = 520;                   // 左后悬的质量
  const double mass_rr = 520;                   // 右后悬的质量
  const double mass_front = mass_fl + mass_fr;  // 前悬质量
  const double mass_rear = mass_rl + mass_rr;   // 后悬质量
  mass_ = mass_front + mass_rear;               //悬架总质量

  lf_ = wheelbase_ * (1.0 - mass_front / mass_);  // 汽车前轮到中心点的距离
  lr_ = wheelbase_ * (1.0 - mass_rear / mass_);  // 汽车后轮到中心点的距离

  // moment of inertia
  iz_ = lf_ * lf_ * mass_front + lr_ * lr_ * mass_rear;  // 汽车的转动惯量

  lqr_eps_ = 0.01;            // LQR 迭代求解精度
  lqr_max_iteration_ = 1500;  // LQR的最大迭代次数

  return;
}

// 初始化控制器
void LqrController::Init() {
  // Matrix init operations.（矩阵初始化）
  const int matrix_size = basic_state_size_;
  matrix_a_ = Matrix::Zero(basic_state_size_, basic_state_size_);//连续A矩阵（4*4）
  matrix_ad_ = Matrix::Zero(basic_state_size_, basic_state_size_);//离散A矩阵（4*4）
  /*
A matrix (Gear Drive)
[0.0, 1.0, 0.0, 0.0;
0.0, (-(c_f + c_r) / m) / v, (c_f + c_r) / m,
(l_r * c_r - l_f * c_f) / m / v;
0.0, 0.0, 0.0, 1.0;
0.0, ((lr * cr - lf * cf) / i_z) / v, (l_f * c_f - l_r * c_r) / i_z,
(-1.0 * (l_f^2 * c_f + l_r^2 * c_r) / i_z) / v;]
*/
  // 初始化A矩阵的常数项（矩阵的行数和列数都是从0开始的）
  matrix_a_(0, 1) = 1.0;
  matrix_a_(1, 2) = (cf_ + cr_) / mass_;
  matrix_a_(2, 3) = 1.0;
  matrix_a_(3, 2) = (lf_ * cf_ - lr_ * cr_) / iz_;

  // 初始化A矩阵的非常数项
  matrix_a_coeff_ = Matrix::Zero(matrix_size, matrix_size);
  matrix_a_coeff_(1, 1) = -(cf_ + cr_) / mass_;
  matrix_a_coeff_(1, 3) = (lr_ * cr_ - lf_ * cf_) / mass_;
  matrix_a_coeff_(3, 1) = (lr_ * cr_ - lf_ * cf_) / iz_;
  matrix_a_coeff_(3, 3) = -1.0 * (lf_ * lf_ * cf_ + lr_ * lr_ * cr_) / iz_;

  /*
b = [0.0, c_f / m, 0.0, l_f * c_f / i_z]^T
*/
  // 初始化B矩阵
  matrix_b_ = Matrix::Zero(basic_state_size_, 1);
  matrix_bd_ = Matrix::Zero(basic_state_size_, 1);
  matrix_b_(1, 0) = cf_ / mass_;
  matrix_b_(3, 0) = lf_ * cf_ / iz_;
  matrix_bd_ = matrix_b_ * ts_;

  // 状态向量
  matrix_state_ = Matrix::Zero(matrix_size, 1);
  // 反馈矩阵
  matrix_k_ = Matrix::Zero(1, matrix_size);
  // lqr cost function中 输入值u的权重，用矩阵R来表示，Matrix::Identity可用来构建单位矩阵
  //R矩阵的值应视为1*1的矩阵
  matrix_r_ = Matrix::Identity(1, 1);
  matrix_r_(0, 0) = 10;//对R矩阵进行赋值
  // lqr cost function中 状态向量x的权重，用矩阵Q来表示
  matrix_q_ = Matrix::Zero(matrix_size, matrix_size);

  // int q_param_size = 4;对矩阵Q的对角线元素进行赋值
  matrix_q_(0, 0) = 1;  // lateral_error
  matrix_q_(1, 1) = 1;  // lateral_error_rate
  matrix_q_(2, 2) = 1;  // heading_error
  matrix_q_(3, 3) = 1;  // heading__error_rate

  matrix_q_updated_ = matrix_q_;

  return;
}

// 两点之间的距离
double PointDistanceSquare(const TrajectoryPoint &point, const double x,
                           const double y) {
  double dx = point.x - x;
  double dy = point.y - y;
  return dx * dx + dy * dy;
}

// 将角度(弧度制)归化到[-M_PI, M_PI]之间
double NormalizeAngle(const double angle) {
  double a = std::fmod(angle + M_PI, 2.0 * M_PI);
  if (a < 0.0) {
    a += (2.0 * M_PI);
  }
  return a - M_PI;
}

// **to-do**计算控制命令
bool LqrController::ComputeControlCommand(
    const VehicleState &localization,
    const TrajectoryData &planning_published_trajectory, ControlCmd &cmd) {
  // 规划轨迹
  trajectory_points_ = planning_published_trajectory.trajectory_points;
  /*
  A matrix (Gear Drive)
  [0.0, 1.0, 0.0, 0.0;
  0.0, (-(c_f + c_r) / m) / v, (c_f + c_r) / m,
  (l_r * c_r - l_f * c_f) / m / v;
  0.0, 0.0, 0.0, 1.0;
  0.0, ((lr * cr - lf * cf) / i_z) / v, (l_f * c_f - l_r * c_r) / i_z,
  (-1.0 * (l_f^2 * c_f + l_r^2 * c_r) / i_z) / v;]
  */

  // to-do 01 配置状态矩阵A

  matrix_a_(0,1)=1.0;
  matrix_a_coeff_(0,2)=0.0;
  matrix_a_(1, 2) = (cf_ + cr_) / mass_;
  matrix_a_(3, 2) = (lf_ * cf_ - lr_ * cr_) / iz_;
  matrix_a_coeff_(1, 1) = -(cf_ + cr_) / mass_;
  matrix_a_coeff_(1, 3) = (lr_ * cr_ - lf_ * cf_) / mass_;
  matrix_a_coeff_(3, 1) = (lr_ * cr_ - lf_ * cf_) / iz_;
  matrix_a_coeff_(3, 3) = -1.0 * (lf_ * lf_ * cf_ + lr_ * lr_ * cr_) / iz_;

  // to-do 02 动力矩阵B
  matrix_b_(1,0)=cf_/mass_;
  matrix_b_(3,0)=lf_*cf_/iz_;
  matrix_bd_=matrix_b_*ts_;

  // cout << "matrix_bd_.row(): " << matrix_bd_.rows() << endl;
  //  cout << "matrix_bd_.col(): " << matrix_bd_.cols() << endl;
  //  Update state = [Lateral Error, Lateral Error Rate, Heading Error, Heading Error Rate]

  // to-do 03 计算横向误差并且更新状态向量x
  UpdateState(localization);

  /// to-do 04 更新状态矩阵A并将状态矩阵A离散化
  UpdateMatrix(localization);

  // cout << "matrix_bd_.row(): " << matrix_bd_.rows() << endl;
  // cout << "matrix_bd_.col(): " << matrix_bd_.cols() << endl;

  // to-do 05 Solve Lqr Problem
  SolveLQRProblem(matrix_ad_, matrix_bd_, matrix_q_, matrix_r_, lqr_eps_,lqr_max_iteration_, &matrix_k_);

  // to-do 06 计算feedback
  //   feedback = - K * state
  //   Convert vehicle steer angle from rad to degree and then to steer degrees
  //   then to 100% ratio
  double steer_angle_feedback = 0;

  // to-do 07 计算前馈控制，计算横向转角的反馈量
  double steer_angle_feedforward = 0.0;
  steer_angle_feedforward = ComputeFeedForward(localization, ref_curv_);
  double steer_angle = steer_angle_feedback + steer_angle_feedforward;
  // Set the steer commands
  cmd.steer_target = steer_angle;

  return true;
}

// 计算横向误差并且更新状态向量x
void LqrController::UpdateState(const VehicleState &vehicle_state) {
  // LateralControlError lat_con_err;  // 将其更改为智能指针
  std::shared_ptr<LateralControlError> lat_con_err =
      std::make_shared<LateralControlError>();
  // 计算横向误差
  ComputeLateralErrors(vehicle_state.x, vehicle_state.y, vehicle_state.heading,
                       vehicle_state.velocity, vehicle_state.angular_velocity,
                       vehicle_state.acceleration, lat_con_err);

  // State matrix update;
  matrix_state_(0, 0) = lat_con_err->lateral_error;
  matrix_state_(1, 0) = lat_con_err->lateral_error_rate;
  matrix_state_(2, 0) = lat_con_err->heading_error;
  matrix_state_(3, 0) = lat_con_err->heading_error_rate;

  // cout << "lateral_error: " << (lat_con_err->lateral_error) << endl;
  // cout << "heading_error: " << (lat_con_err->heading_error) << endl;
}

// to-do 04 更新状态矩阵A并将状态矩阵A离散化
void LqrController::UpdateMatrix(const VehicleState &vehicle_state) 
{
  double v;//定义车速
  //当车辆速度大于0.1时，车速即为原始车速，当车速小于0.1时，车速取为0.1（最小速度保护）
  v=std::max(vehicle_state.velocity,minimum_speed_protection_);
  matrix_a_(1,1)=matrix_a_coeff_(1,1)/v;
  matrix_a_(1,3)=matrix_a_coeff_(1,3)/v;
  matrix_a_(3,1)=matrix_a_coeff_(3,1)/v;
  matrix_a_(3,3)=matrix_a_coeff_(3,3)/v;
  Matrix matrix_i=Matrix::Identity(matrix_a_.cols(),matrix_a_.cols());//定义单位矩阵
  //使用中点欧拉法对矩阵A进行离散化
  matrix_ad_=(matrix_i-ts_*0.5*matrix_a_).inverse()*(matrix_i+ts_*0.5*matrix_a_);
}

// to-do 07前馈控制，计算横向转角的反馈量
double LqrController::ComputeFeedForward(const VehicleState &localization,
                                         const double ref_curvature) 
{
  const double kv=lr_*mass_/2/cf_/wheelbase_-lf_*mass_/2/cr_/wheelbase_;//计算横向加速度系数Kv
  const double v=localization.velocity;
  double steer_angle_feedforwadterm;//定义前馈控制转向角
  //计算前馈控制转角
  steer_angle_feedforwadterm=(wheelbase_*ref_curvature+kv*v*v*ref_curvature-
                              matrix_k_(0,2)*(lr_*ref_curvature-lf_*mass_*v*v*ref_curvature/2/cr_/wheelbase_));
  return steer_angle_feedforwadterm;
}

// to-do 03 计算横向误差
void LqrController::ComputeLateralErrors(const double x, const double y,
                                         const double theta,
                                         const double linear_v,
                                         const double angular_v,
                                         const double linear_a,
                                         LateralControlErrorPtr &lat_con_err) 
{
  TrajectoryPoint target_point;
  target_point=QueryNearestPointByPosition(x,y);
  const double dx=target_point.x-x;//x轴误差
  const double dy=target_point.y-y;//y轴误差
  const double cos_target_heading=cos(target_point.heading);//定义目标点航向角的余弦值
  const double sin_target_heading=sin(target_point.heading);//定义目标点航向角的正弦值
  double lateral_error=cos_target_heading*dy-sin_target_heading*dx;//在frenet坐标系下计算横向误差
  lat_con_err->lateral_error=lateral_error;
  double heading_error=NormalizeAngle(target_point.heading-theta);// 将角度(弧度制)归化到[-M_PI, M_PI]之间
  lat_con_err->heading_error=heading_error;
  auto lateral_error_dot=linear_v*tan(heading_error);//计算横向误差变化率（相比于PPT上的公式，此处缺少侧向速度Vy）
  lat_con_err->lateral_error_rate=lateral_error_dot;
  double ref_heading_rate=target_point.kappa*target_point.v;//计算参考航向角速度（航向角速度=曲率*速度）
  lat_con_err->heading_error_rate=angular_v-ref_heading_rate;
}

// 查询距离当前位置最近的轨迹点
TrajectoryPoint LqrController::QueryNearestPointByPosition(const double x,
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
  // cout << "x: " << trajectory_points_[index_min].x << " " << "y: " <<
  // trajectory_points_[index_min].y; cout << " index_min: " << index_min <<
  // endl; cout << "tarjectory.heading: " <<
  // trajectory_points_[index_min].heading << endl;

  ref_curv_ =trajectory_points_[index_min].kappa;  // 最近的目标轨迹点上的曲率

  return trajectory_points_[index_min];
}

// to-do 05:求解LQR方程
void LqrController::SolveLQRProblem(const Matrix &A, const Matrix &B,
                                    const Matrix &Q, const Matrix &R,
                                    const double tolerance,
                                    const uint max_num_iteration,
                                    Matrix *ptr_K) {
  // 防止矩阵的维数出错导致后续的运算失败
  if (A.rows() != A.cols() || B.rows() != A.rows() || Q.rows() != Q.cols() ||
      Q.rows() != A.rows() || R.rows() != R.cols() || R.rows() != B.cols()) {
    std::cout
        << "LQR solver: one or more matrixes have incompatible dimensions."
        << std::endl;
    return;
  }
  Matrix AT=A.transpose();//A矩阵转置
  Matrix BT=B.transpose();//B矩阵转置
  //使用动态规划方法求解LQR
  Matrix P=Q;//矩阵P的h初值赋为Q
  uint num_iteration=0;//定义迭代次数
  double diff=std::numeric_limits<double>::max();//diff表示矩阵P在相邻两次迭代中的最大差异项的绝对值
  //当迭代次数小于最大迭代次数且误差大于要求值时循环进行迭代求解，直到迭代次数达到最大迭代次数或误差小于要求值停止循环
  while(num_iteration++<max_num_iteration && diff>tolerance)
  {
    Matrix P_next=AT*P*A-(AT*P*B)*(R+BT*P*B).inverse()*(BT*P*A)+Q;
    diff=fabs((P_next-P).maxCoeff());//fabs()的作用是求绝对值，maxCoeff()的作用是求矩阵中的最大值
    P=P_next;//进行P矩阵的迭代
  }
  *ptr_K=(R+BT*P*B).inverse()*(BT*P*A);//对反馈增益矩阵K进行赋值
}

}  // namespace control
}  // namespace shenlan

#pragma once

#include <algorithm>
#include <limits>
#include <memory>
#include <utility>
#include <vector>

#include "Eigen/Eigen"
#include "osqp/osqp.h"

namespace shenlan {
namespace control {

class MpcOsqp {
 public:
  /**
   * @brief Solver for discrete-time model predictive control problem.
   * @param matrix_a The system dynamic matrix  状态矩阵A
   * @param matrix_b The control matrix     控制矩阵B
   * @param matrix_q The cost matrix for control state  costfunction（代价函数）中的gain矩阵Q 
   * @param matrix_lower The lower bound control constrain matrix   约束矩阵的上下界
   * @param matrix_upper The upper bound control constrain matrix   
   * @param matrix_initial_state The initial state matrix   初始状态矩阵
   * @param max_iter The maximum iterations 最大迭代次数
   */
  MpcOsqp(const Eigen::MatrixXd &matrix_a, const Eigen::MatrixXd &matrix_b,   // A, B
          const Eigen::MatrixXd &matrix_q, const Eigen::MatrixXd &matrix_r,   // Q, R
          const Eigen::MatrixXd &matrix_initial_x,  // 初始状态空间
          const Eigen::MatrixXd &matrix_u_lower,    // 控制变量下界
          const Eigen::MatrixXd &matrix_u_upper,    // 控制变量上界
          const Eigen::MatrixXd &matrix_x_lower,    // 状态变量下界
          const Eigen::MatrixXd &matrix_x_upper,    // 状态变量上界
          const Eigen::MatrixXd &matrix_x_ref, const int max_iter,
          const int horizon, const double eps_abs);

  // control vector
  bool Solve(std::vector<double> *control_cmd);

 private:
  void CalculateKernel(std::vector<c_float> *P_data,
                       std::vector<c_int> *P_indices,
                       std::vector<c_int> *P_indptr);
  void CalculateEqualityConstraint(std::vector<c_float> *A_data,
                                   std::vector<c_int> *A_indices,
                                   std::vector<c_int> *A_indptr);
  void CalculateGradient();
  void CalculateConstraintVectors();
  OSQPSettings *Settings();
  OSQPData *Data();
  void FreeData(OSQPData *data);

  template <typename T>
  T *CopyData(const std::vector<T> &vec) {
    T *data = new T[vec.size()];
    memcpy(data, vec.data(), sizeof(T) * vec.size());
    return data;
  }

 private:
  Eigen::MatrixXd matrix_a_;
  Eigen::MatrixXd matrix_b_;
  Eigen::MatrixXd matrix_q_;
  Eigen::MatrixXd matrix_r_;
  Eigen::MatrixXd matrix_initial_x_;
  const Eigen::MatrixXd matrix_u_lower_;
  const Eigen::MatrixXd matrix_u_upper_;
  const Eigen::MatrixXd matrix_x_lower_;
  const Eigen::MatrixXd matrix_x_upper_;
  const Eigen::MatrixXd matrix_x_ref_;
  int max_iteration_;
  size_t horizon_;
  double eps_abs_;
  size_t state_dim_;
  size_t control_dim_;
  size_t num_param_;
  int num_constraint_;
  Eigen::VectorXd gradient_;
  Eigen::VectorXd lowerBound_;
  Eigen::VectorXd upperBound_;
};

}  // namespace control
}  // namespace shenlan
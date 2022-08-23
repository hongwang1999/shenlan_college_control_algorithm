#include "mpc_osqp.h"

namespace shenlan {
namespace control {
MpcOsqp::MpcOsqp(const Eigen::MatrixXd &matrix_a,
                 const Eigen::MatrixXd &matrix_b,
                 const Eigen::MatrixXd &matrix_q,
                 const Eigen::MatrixXd &matrix_r,
                 const Eigen::MatrixXd &matrix_initial_x,
                 const Eigen::MatrixXd &matrix_u_lower,
                 const Eigen::MatrixXd &matrix_u_upper,
                 const Eigen::MatrixXd &matrix_x_lower,
                 const Eigen::MatrixXd &matrix_x_upper,
                 const Eigen::MatrixXd &matrix_x_ref, const int max_iter,
                 const int horizon, const double eps_abs)
    : matrix_a_(matrix_a),  // 6 * 6
      matrix_b_(matrix_b),  // 6 * 2
      matrix_q_(matrix_q),  // 6 * 6
      matrix_r_(matrix_r),  // 2 * 2
      matrix_initial_x_(matrix_initial_x), // 6 * 1
      matrix_u_lower_(matrix_u_lower),  // 2 * 1
      matrix_u_upper_(matrix_u_upper),  // 2 * 1  
      matrix_x_lower_(matrix_x_lower),  // 6 * 1
      matrix_x_upper_(matrix_x_upper),  // 6 * 1
      matrix_x_ref_(matrix_x_ref),      // 6 * 1
      max_iteration_(max_iter),   
      horizon_(horizon),
      eps_abs_(eps_abs) {
  state_dim_ = matrix_b.rows();     // 6
  control_dim_ = matrix_b.cols();   // 2
  num_param_ = state_dim_ * (horizon_ + 1) + control_dim_ * horizon_; // 6 * (10 + 1) + 2 * 10;
}

void MpcOsqp::CalculateKernel(std::vector<c_float> *P_data,
                              std::vector<c_int> *P_indices,
                              std::vector<c_int> *P_indptr) {
  // col1:(row,val),...; col2:(row,val),....; ...
  // P = diag(Q,Q,....Q, R, R,...R) Q*(horizon+1), R*horizon
  std::vector<std::vector<std::pair<c_int, c_float>>> columns;
  columns.resize(num_param_);
  int value_index = 0;
  // state and terminal state
  //  csc矩阵村出发: 分别是data, 对应data[i]的行索引值， 对应data[i]以列为基准对应,出现的顺序
  // 详情请见,https://blog.csdn.net/qq_41959288/article/details/118519021
  for (size_t i = 0; i <= horizon_; ++i) {
    for (size_t j = 0; j < state_dim_; ++j) {
      // (row, val)   
      // 行索引, data值
      columns[i * state_dim_ + j].emplace_back(i * state_dim_ + j,
                                               matrix_q_(j, j));
      ++value_index;
    }
  }
  // control
  const size_t state_total_dim = state_dim_ * (horizon_ + 1);
  for (size_t i = 0; i < horizon_; ++i) {
    for (size_t j = 0; j < control_dim_; ++j) {
      // (row, val)
      // 行索引, data值
      columns[i * control_dim_ + j + state_total_dim].emplace_back(
          state_total_dim + i * control_dim_ + j, matrix_r_(j, j));
      ++value_index;
    }
  }

  int ind_p = 0;
  for (size_t i = 0; i < num_param_; ++i) {
    // TODO(SHU) Check this
    P_indptr->emplace_back(ind_p);
    for (const auto &row_data_pair : columns[i]) {
      P_data->emplace_back(row_data_pair.second);    // val
      P_indices->emplace_back(row_data_pair.first);  // row
      ++ind_p;
    }
  }
  P_indptr->emplace_back(ind_p);  
}

// reference is always zero
void MpcOsqp::CalculateGradient() {
  // populate the gradient vector
  gradient_ = Eigen::VectorXd::Zero(
      state_dim_ * (horizon_ + 1) + control_dim_ * horizon_, 1);
  for (size_t i = 0; i < horizon_ + 1; i++) {     // 将J = (x_k - x_r)^T * Q * (x_k - x_r) 展开之后的一次型计算
    gradient_.block(i * state_dim_, 0, state_dim_, 1) =
        -1.0 * matrix_q_ * matrix_x_ref_;
  }
}

// equality constraints x(k+1) = A*x(k)
void MpcOsqp::CalculateEqualityConstraint(std::vector<c_float> *A_data,
                                          std::vector<c_int> *A_indices,
                                          std::vector<c_int> *A_indptr) {
  static constexpr double kEpsilon = 1e-6;
  // block matrix
  Eigen::MatrixXd matrix_constraint = Eigen::MatrixXd::Zero(
      state_dim_ * (horizon_ + 1) + state_dim_ * (horizon_ + 1) +
          control_dim_ * horizon_,
      state_dim_ * (horizon_ + 1) + control_dim_ * horizon_);
  Eigen::MatrixXd state_identity_mat = Eigen::MatrixXd::Identity(
      state_dim_ * (horizon_ + 1), state_dim_ * (horizon_ + 1));

  matrix_constraint.block(0, 0, state_dim_ * (horizon_ + 1),
                          state_dim_ * (horizon_ + 1)) =
      -1 * state_identity_mat;

  Eigen::MatrixXd control_identity_mat =
      Eigen::MatrixXd::Identity(control_dim_, control_dim_);

  for (size_t i = 0; i < horizon_; i++) {
    matrix_constraint.block((i + 1) * state_dim_, i * state_dim_, state_dim_,
                            state_dim_) = matrix_a_;
  }

  for (size_t i = 0; i < horizon_; i++) {
    matrix_constraint.block((i + 1) * state_dim_,
                            i * control_dim_ + (horizon_ + 1) * state_dim_,
                            state_dim_, control_dim_) = matrix_b_;
  }

  Eigen::MatrixXd all_identity_mat =
      Eigen::MatrixXd::Identity(num_param_, num_param_);

  matrix_constraint.block(state_dim_ * (horizon_ + 1), 0, num_param_,
                          num_param_) = all_identity_mat;
  std::vector<std::vector<std::pair<c_int, c_float>>> columns;
  columns.resize(num_param_ + 1);
  int value_index = 0;
  // state and terminal state
  for (size_t i = 0; i < num_param_; ++i) {  // col
    for (size_t j = 0; j < num_param_ + state_dim_ * (horizon_ + 1);
         ++j)  // row
      if (std::fabs(matrix_constraint(j, i)) > kEpsilon) {
        // (row, val)
        columns[i].emplace_back(j, matrix_constraint(j, i));
        ++value_index;
      }
  }
  int ind_A = 0;
  for (size_t i = 0; i < num_param_; ++i) {
    A_indptr->emplace_back(ind_A);
    for (const auto &row_data_pair : columns[i]) {
      A_data->emplace_back(row_data_pair.second);    // value
      A_indices->emplace_back(row_data_pair.first);  // row
      ++ind_A;
    }
  }
  A_indptr->emplace_back(ind_A);
}

// 计算约束向量
void MpcOsqp::CalculateConstraintVectors() {
  // evaluate the lower and the upper inequality vectors
  // 不等式约束
  Eigen::VectorXd lowerInequality = Eigen::MatrixXd::Zero(    // 决策变量下界
      state_dim_ * (horizon_ + 1) + control_dim_ * horizon_, 1);
  Eigen::VectorXd upperInequality = Eigen::MatrixXd::Zero(    // 决策变量上界
      state_dim_ * (horizon_ + 1) + control_dim_ * horizon_, 1);
  for (size_t i = 0; i < horizon_; i++) {   // 控制变量上下界
    lowerInequality.block(control_dim_ * i + state_dim_ * (horizon_ + 1), 0,
                          control_dim_, 1) = matrix_u_lower_;
    upperInequality.block(control_dim_ * i + state_dim_ * (horizon_ + 1), 0,
                          control_dim_, 1) = matrix_u_upper_;
  }
  for (size_t i = 0; i < horizon_ + 1; i++) {   // 状态变量上下界
    lowerInequality.block(state_dim_ * i, 0, state_dim_, 1) = matrix_x_lower_;
    upperInequality.block(state_dim_ * i, 0, state_dim_, 1) = matrix_x_upper_;
  }

  // evaluate the lower and the upper equality vectors
  // 等式约束
  Eigen::VectorXd lowerEquality =   
      Eigen::MatrixXd::Zero(state_dim_ * (horizon_ + 1), 1);
  Eigen::VectorXd upperEquality;
  lowerEquality.block(0, 0, state_dim_, 1) = -1 * matrix_initial_x_;  // 初始状态  
  upperEquality = lowerEquality;
  lowerEquality = lowerEquality;

  // merge inequality and equality vectors
  // 合并等式约束和不等式约束
  lowerBound_ = Eigen::MatrixXd::Zero(
      2 * state_dim_ * (horizon_ + 1) + control_dim_ * horizon_, 1);
  lowerBound_ << lowerEquality, lowerInequality;
  upperBound_ = Eigen::MatrixXd::Zero(
      2 * state_dim_ * (horizon_ + 1) + control_dim_ * horizon_, 1);
  upperBound_ << upperEquality, upperInequality;
}

OSQPSettings *MpcOsqp::Settings() {
  // default setting
  OSQPSettings *settings =
      reinterpret_cast<OSQPSettings *>(c_malloc(sizeof(OSQPSettings)));
  if (settings == nullptr) {
    return nullptr;
  } else {
    osqp_set_default_settings(settings);
    settings->polish = true;
    settings->scaled_termination = true;
    settings->verbose = false;
    settings->max_iter = max_iteration_;    // 最大迭代次数
    settings->eps_abs = eps_abs_;   // 计算精度
    return settings;
  }
}

OSQPData *MpcOsqp::Data() {
  OSQPData *data = reinterpret_cast<OSQPData *>(c_malloc(sizeof(OSQPData)));
  size_t kernel_dim = state_dim_ * (horizon_ + 1) + control_dim_ * horizon_;  // 6 * (10 + 1) + 2 * 10
  size_t num_affine_constraint =  // 约束的数量
      2 * state_dim_ * (horizon_ + 1) + control_dim_ * horizon_; // 等式约束 + 不等式约束的数量   
  if (data == nullptr) {
    return nullptr;
  } else {
    data->n = kernel_dim;   // data->n 需要求解的变量的数量
    data->m = num_affine_constraint;  // 约束的数量 = 等式约束的数量 + 不等式约束的数量
    std::vector<c_float> P_data;    // X^T*P*X + Q*X
    std::vector<c_int> P_indices;
    std::vector<c_int> P_indptr;
    CalculateKernel(&P_data, &P_indices, &P_indptr);
    data->P =
        csc_matrix(kernel_dim, kernel_dim, P_data.size(), CopyData(P_data),
                   CopyData(P_indices), CopyData(P_indptr));
    data->q = gradient_.data();
    std::vector<c_float> A_data;
    std::vector<c_int> A_indices;
    std::vector<c_int> A_indptr;
    CalculateEqualityConstraint(&A_data, &A_indices, &A_indptr);
    data->A =
        csc_matrix(state_dim_ * (horizon_ + 1) + state_dim_ * (horizon_ + 1) +
                       control_dim_ * horizon_,
                   kernel_dim, A_data.size(), CopyData(A_data),
                   CopyData(A_indices), CopyData(A_indptr));
    data->l = lowerBound_.data();
    data->u = upperBound_.data();
    return data;
  }
}

void MpcOsqp::FreeData(OSQPData *data) {
  c_free(data->A);
  c_free(data->P);
  c_free(data);
}

bool MpcOsqp::Solve(std::vector<double> *control_cmd) {
  CalculateGradient();
  CalculateConstraintVectors();

  OSQPData *data = Data();

  OSQPSettings *settings = Settings();
  OSQPWorkspace *osqp_workspace = nullptr;
  // osqp_setup(&osqp_workspace, data, settings);  // 和版本相关
  osqp_workspace = (OSQPWorkspace *)(osqp_setup(&osqp_workspace,data, settings));
  osqp_solve(osqp_workspace);

  auto status = osqp_workspace->info->status_val;
  // check status
  if (status < 0 || (status != 1 && status != 2)) {
    osqp_cleanup(osqp_workspace);
    FreeData(data);
    c_free(settings);
    return false;
  } else if (osqp_workspace->solution == nullptr) {
    osqp_cleanup(osqp_workspace);
    FreeData(data);
    c_free(settings);
    return false;
  }

  size_t first_control = state_dim_ * (horizon_ + 1);   // 总的决策变量是 state_dim_ * (horizon_ + 1) + control_dim_ * horizon_
                                                        // 包括[x_k, u_k],u_k的索引是state_dim_ * (horizon_ + 1)， 所以去第一个控制量
  for (size_t i = 0; i < control_dim_; ++i) {
    control_cmd->at(i) = osqp_workspace->solution->x[i + first_control];
  }

  // Cleanup
  osqp_cleanup(osqp_workspace);
  FreeData(data);
  c_free(settings);
  return true;
}

}  // namespace control
}  // namespace shenlan

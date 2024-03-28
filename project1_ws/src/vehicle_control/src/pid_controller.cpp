#include "pid_controller.h"

namespace shenlan {
namespace control {

PIDController::PIDController(const double kp, const double ki,
                             const double kd) {
  kp_ = kp;
  ki_ = ki;
  kd_ = kd;
  previous_error_ = 0.0;
  previous_output_ = 0.0;
  integral_ = 0.0;
  first_hit_ = true;
}

// /**to-do**/ 计算 PID 输出，实现PID控制
double PIDController::Control(const double error, const double dt) {




 
}

// /**to-do**/ 重置PID参数
void PIDController::Reset() {





}

}  // namespace control
}  // namespace shenlan

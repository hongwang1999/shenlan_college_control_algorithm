/**
 * @Author: YunKai Xia
 * @Date:   2022-06-15 16:18:15
 * @Last Modified by:   YunKai Xia
 * @Last Modified time: 2022-06-17 23:43:20
 */
namespace shenlan {
namespace control {
class PIDController {
 public:
  PIDController(const double kp, const double ki, const double kd);
  ~PIDController() = default;

  void Reset();

  /**
   * @brief compute control value based on the error
   * @param error error value, the difference between
   * a desired value and a measured value
   * @param dt sampling time interval
   * @return control value based on PID terms
   */
  double Control(const double error, const double dt);

 protected:
  double kp_ = 0.0;
  double ki_ = 0.0;
  double kd_ = 0.0;
  double previous_error_ = 0.0;
  double previous_output_ = 0.0;
  double integral_ = 0.0;
  bool first_hit_ = false;
};

}  // namespace control
}  // namespace shenlan
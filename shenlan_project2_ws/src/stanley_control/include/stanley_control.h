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
//stanley控制器类
class StanleyController {
 public:
  StanleyController(){};
  ~StanleyController(){};

  void LoadControlConf();
  void ComputeControlCmd(const VehicleState &vehicle_state,
                         const TrajectoryData &planning_published_trajectory,
                         ControlCmd &cmd);
  void ComputeLateralErrors(const double x, const double y, const double theta,
                            double &e_y, double &e_theta);
  TrajectoryPoint QueryNearestPointByPosition(const double x, const double y);

 protected:
  std::vector<TrajectoryPoint> trajectory_points_;
  double k_y_ = 0.0;//自设定参数，其值影响误差纠正的速度
  double u_min_ = 0.0;//最小速度
  double u_max_ = 100.0;//最大速度

  double theta_ref_;//参考横摆角
  double theta_0_;//实际横摆角
};

}  // namespace control
}  // namespace shenlan

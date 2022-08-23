#include "stanley_control.h"

#include <algorithm>
#include <iomanip>
#include <utility>
#include <vector>

#include "Eigen/LU"
#include <math.h>

using namespace std;

namespace shenlan {
namespace control {
//单位转换，将角度转换为弧度
double atan2_to_PI(const double atan2) {
  return atan2 * M_PI / 180;
}
//计算两点之间距离的平方
double PointDistanceSquare(const TrajectoryPoint &point, const double x,
                           const double y) {
  const double dx = point.x - x;
  const double dy = point.y - y;
  return dx * dx + dy * dy;
}
//加载控制
void StanleyController::LoadControlConf() {
  k_y_ = 0.5;
}

// /** to-do **/ 计算需要的控制命令, 实现对应的stanley模型,并将获得的控制命令传递给汽车
// 提示，在该函数中你需要调用计算误差
void StanleyController::ComputeControlCmd(
    const VehicleState &vehicle_state,
    const TrajectoryData &planning_published_trajectory, ControlCmd &cmd) {
  //通过赋值得到规划得到的轨迹
  trajectory_points_=planning_published_trajectory.trajectory_points;
  double e_y=0.0;
  double e_theta=0.0;

  cout<<"vehicle_state.heading"<<vehicle_state.heading<<endl;
  ComputeLateralErrors(vehicle_state.x,vehicle_state.y,vehicle_state.heading,e_y,e_theta);
  cout<<"航向误差e_theta:"<<e_theta<<endl;
  cout<<"横向误差e_y:"<<e_y<<endl;
  double steer_angle=(e_theta+std::atan2(k_y_*e_y,vehicle_state.velocity));//此处暂时未在分母上加上Ks

  //控制车轮转角不超过其范围，车轮转角的范围为±pi/12
  if(steer_angle>M_PI/12)
  {
    steer_angle=M_PI/12;
  }
  else if(steer_angle<-M_PI/12)
  {
    steer_angle=-M_PI/12;
  }
  cmd.steer_target=steer_angle;
}

// /** to-do **/ 计算需要的误差，包括横向误差，纵向误差

void StanleyController::ComputeLateralErrors(const double x, const double y,
                                             const double theta, double &e_y,
                                             double &e_theta) {
 TrajectoryPoint target_point;
 target_point=QueryNearestPointByPosition(x,y);

 double heading=target_point.heading;
 const double dx=target_point.x-x;
 const double dy=target_point.y-y;
 e_y=sqrt(dx*dx+dy*dy);//横向误差的绝对值
 //横向误差是在frenet坐标系下求解的，而非笛卡尔坐标系，需要从笛卡尔坐标系转换得到frenet坐标系，frenet坐标系的X轴平行于目标点的目标速度方向，Y轴垂直于X轴
 //重点：需要根据fx的值确定横向误差究竟是正还是负，车轮转角
 double fx=dy*cos(heading)-dx*sin(heading);//frenet坐标系下目标点相对于实际点的位置，需根据其正负确定横向误差的正负
 if(fx>0)//当相对位置为正时，横向误差为负
 {
   e_y=-abs(e_y);//此时计算的横向误差仍是笛卡尔坐标系下的横向误差，而非frenet坐标系下的横向误差
 } 
 else//当相对位置为负时，横向误差为正
 {
   e_y=abs(e_y);
 }
 e_theta=theta-heading;//航向误差
 if(e_theta>M_PI)//确保航向偏差的值在-pi到pi之间
 {
   e_theta=-2.0*M_PI+e_theta;
 }
 else if(e_theta<-M_PI)
 {
   e_theta=2.0*M_PI+e_theta;
 }
 return;
}
//计算距离坐标点最近的规划点
TrajectoryPoint StanleyController::QueryNearestPointByPosition(const double x,
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
  // cout << " index_min: " << index_min << endl;
  //cout << "tarjectory.heading: " << trajectory_points_[index_min].heading << endl;
  //将最近目标点的朝向设置为参考方向角
  theta_ref_ = trajectory_points_[index_min].heading;
  //返回距离最近的目标点
  return trajectory_points_[index_min];
}

}  // namespace control
}  // namespace shenlan

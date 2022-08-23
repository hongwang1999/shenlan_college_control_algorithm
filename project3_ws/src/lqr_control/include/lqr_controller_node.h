/**
 * @Author: YunKai Xia
 * @Date:   2022-06-17 22:12:09
 * @Last Modified by:   YunKai Xia
 * @Last Modified time: 2022-06-17 23:42:39
 */
#include <stdint.h>

#ifndef __LQR_CONTROLLER_NODE_H__
#define __LQR_CONTROLLER_NODE_H__

#include <memory>

#include "lqr_controller.h"
#include "pid_controller.h"
#include "ros_viz_tools/ros_viz_tools.h"
using namespace shenlan::control;
using namespace ros_viz_tools;
using namespace std;
//构造LQR控制器节点类
class LQRControllerNode {
 public:
  LQRControllerNode();//构造
  ~LQRControllerNode();//析构
  bool init();//初始化

 private:
  //回调函数
  void odomCallback(const nav_msgs::Odometry::ConstPtr &msg);
  //控制线程
  void controlTimerLoop(const ros::TimerEvent &);
  double pid_control();
  // 可视化路径的线程函数
  void visTimerLoop(const ros::TimerEvent &);
  //加载路网地图，并设置轨迹的速度信息
  bool loadRoadmap(const std::string &roadmap_path, const double target_speed);
  //将路网转换成可视化的marker数据
  void addRoadmapMarker(const std::vector<TrajectoryPoint> &path,
                        const std::string &frame_id);
  //计算两点之间的距离
  //计算轨迹点到某一坐标点的距离
  double pointDistance(const TrajectoryPoint &point, const double x,
                       const double y) {
    double dx = point.x - x;
    double dy = point.y - y;
    return sqrt(dx * dx + dy * dy);
  }
  //计算两坐标点之间的距离
  double pointDistance(const double x1, const double y1, const double x,
                       const double y) {
    double dx = x1 - x;
    double dy = y1 - y;
    return sqrt(dx * dx + dy * dy);
  }

 private:
  ros::NodeHandle nh_;                             //句柄
  ros::NodeHandle pnh_;                            //读取配置参数句柄
  ros::Timer visTimer_;                            //可视化的线程
  ros::Timer controlTimer_;                        //控制的线程
  ros::Subscriber VehiclePoseSub_;                 //订阅车辆的定位信息
  ros::Publisher controlPub_;                      //发布控制指令
  std::shared_ptr<RosVizTools> roadmapMarkerPtr_;  //定义智能指针发布可视化路网
  VehicleState vehicleState_;                      //创建车辆状态对象

  double targetSpeed_ = 5;                          //目标速度
  std::shared_ptr<PIDController> speedPidControllerPtr_;//创建PID控制器指针用于控制速度
  std::shared_ptr<LqrController> lqrController_;//创建LQR控制器指针用于横向控制
  double controlFrequency_ = 100;               //控制频率
  TrajectoryData planningPublishedTrajectory_;  //跟踪的轨迹
  TrajectoryPoint goalPoint_;                   //终点
  double goalTolerance_ = 0.5;                  //到终点的容忍距离
  bool isReachGoal_ = false;                    //是否到达终点
  bool firstRecord_ = true;                     //是否是第一次记录
};
#endif /* __LQR_CONTROLLER_NODE_H__ */

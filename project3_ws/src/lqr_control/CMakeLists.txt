cmake_minimum_required(VERSION 3.0.2)
project(lqr_control)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
add_definitions("-Wall -g")
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  lgsvl_msgs
  nav_msgs
  roscpp
  rospy
  sensor_msgs
  std_msgs
  tf
  ros_viz_tools
)

catkin_package(
  LIBRARIES serial_communication
  CATKIN_DEPENDS geometry_msgs roscpp rospy sensor_msgs std_msgs tf lgsvl_msgs nav_msgs
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  "/usr/include/eigen3"
)

link_directories(${catkin_LIBRARIES} lib)

add_library(lqr_control
            src/lqr_controller.cpp
            src/reference_line.cpp
            src/pid_controller.cpp)
               

target_link_libraries(lqr_control ${catkin_LIBRARIES} VTSMapInterfaceCPP)

add_executable(lqr_control_node src/main.cpp src/lqr_controller_node.cpp)
target_link_libraries(lqr_control_node lqr_control)
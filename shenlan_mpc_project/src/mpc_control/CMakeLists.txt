cmake_minimum_required(VERSION 3.0.2)
project(mpc_control)

set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -g")

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  lgsvl_msgs
  nav_msgs
  roscpp
  rospy
  sensor_msgs
  std_msgs
  tf
)

find_package(osqp REQUIRED)

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

add_executable(mpc_control
               src/main.cpp
               src/mpc_controller.cpp
               src/reference_line.cpp
               src/mpc_osqp.cpp)

target_link_libraries(mpc_control ${catkin_LIBRARIES} VTSMapInterfaceCPP  osqp::osqp)
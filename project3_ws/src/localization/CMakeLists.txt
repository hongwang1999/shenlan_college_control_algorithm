cmake_minimum_required(VERSION 3.0.2)

project(localization)

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

add_executable(localization src/main.cpp)

target_link_libraries(localization ${catkin_LIBRARIES})
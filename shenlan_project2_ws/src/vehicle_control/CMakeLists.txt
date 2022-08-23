cmake_minimum_required(VERSION 3.0.2)
project(vehicle_control)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  rospy
  sensor_msgs
  std_msgs
  tf
  lgsvl_msgs
  nav_msgs
)

#add_message_files(
#        FILES
#        Control_msgs.msg
#)
#generate_messages(
#        DEPENDENCIES
#        std_msgs
#)


catkin_package(
#  INCLUDE_DIRS include
  LIBRARIES serial_communication
  CATKIN_DEPENDS geometry_msgs roscpp rospy sensor_msgs std_msgs tf lgsvl_msgs nav_msgs
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)
link_directories(${catkin_LIBRARIES} lib)

add_executable(vehicle_control
               src/vehicle_control.cpp
               src/pid_controller.cpp)
target_link_libraries(vehicle_control ${catkin_LIBRARIES} VTSMapInterfaceCPP)

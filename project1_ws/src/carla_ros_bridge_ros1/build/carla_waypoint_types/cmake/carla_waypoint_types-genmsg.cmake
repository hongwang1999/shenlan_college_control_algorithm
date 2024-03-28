# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "carla_waypoint_types: 1 messages, 2 services")

set(MSG_I_FLAGS "-Icarla_waypoint_types:/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(carla_waypoint_types_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg" NAME_WE)
add_custom_target(_carla_waypoint_types_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "carla_waypoint_types" "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv" NAME_WE)
add_custom_target(_carla_waypoint_types_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "carla_waypoint_types" "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv" "carla_waypoint_types/CarlaWaypoint:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv" NAME_WE)
add_custom_target(_carla_waypoint_types_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "carla_waypoint_types" "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv" "carla_waypoint_types/CarlaWaypoint:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carla_waypoint_types
)

### Generating Services
_generate_srv_cpp(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carla_waypoint_types
)
_generate_srv_cpp(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carla_waypoint_types
)

### Generating Module File
_generate_module_cpp(carla_waypoint_types
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carla_waypoint_types
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(carla_waypoint_types_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(carla_waypoint_types_generate_messages carla_waypoint_types_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_cpp _carla_waypoint_types_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_cpp _carla_waypoint_types_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_cpp _carla_waypoint_types_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(carla_waypoint_types_gencpp)
add_dependencies(carla_waypoint_types_gencpp carla_waypoint_types_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS carla_waypoint_types_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carla_waypoint_types
)

### Generating Services
_generate_srv_eus(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carla_waypoint_types
)
_generate_srv_eus(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carla_waypoint_types
)

### Generating Module File
_generate_module_eus(carla_waypoint_types
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carla_waypoint_types
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(carla_waypoint_types_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(carla_waypoint_types_generate_messages carla_waypoint_types_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_eus _carla_waypoint_types_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_eus _carla_waypoint_types_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_eus _carla_waypoint_types_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(carla_waypoint_types_geneus)
add_dependencies(carla_waypoint_types_geneus carla_waypoint_types_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS carla_waypoint_types_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carla_waypoint_types
)

### Generating Services
_generate_srv_lisp(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carla_waypoint_types
)
_generate_srv_lisp(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carla_waypoint_types
)

### Generating Module File
_generate_module_lisp(carla_waypoint_types
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carla_waypoint_types
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(carla_waypoint_types_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(carla_waypoint_types_generate_messages carla_waypoint_types_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_lisp _carla_waypoint_types_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_lisp _carla_waypoint_types_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_lisp _carla_waypoint_types_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(carla_waypoint_types_genlisp)
add_dependencies(carla_waypoint_types_genlisp carla_waypoint_types_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS carla_waypoint_types_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carla_waypoint_types
)

### Generating Services
_generate_srv_nodejs(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carla_waypoint_types
)
_generate_srv_nodejs(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carla_waypoint_types
)

### Generating Module File
_generate_module_nodejs(carla_waypoint_types
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carla_waypoint_types
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(carla_waypoint_types_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(carla_waypoint_types_generate_messages carla_waypoint_types_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_nodejs _carla_waypoint_types_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_nodejs _carla_waypoint_types_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_nodejs _carla_waypoint_types_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(carla_waypoint_types_gennodejs)
add_dependencies(carla_waypoint_types_gennodejs carla_waypoint_types_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS carla_waypoint_types_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carla_waypoint_types
)

### Generating Services
_generate_srv_py(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carla_waypoint_types
)
_generate_srv_py(carla_waypoint_types
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carla_waypoint_types
)

### Generating Module File
_generate_module_py(carla_waypoint_types
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carla_waypoint_types
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(carla_waypoint_types_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(carla_waypoint_types_generate_messages carla_waypoint_types_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_py _carla_waypoint_types_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_py _carla_waypoint_types_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv" NAME_WE)
add_dependencies(carla_waypoint_types_generate_messages_py _carla_waypoint_types_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(carla_waypoint_types_genpy)
add_dependencies(carla_waypoint_types_genpy carla_waypoint_types_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS carla_waypoint_types_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carla_waypoint_types)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carla_waypoint_types
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(carla_waypoint_types_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carla_waypoint_types)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carla_waypoint_types
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(carla_waypoint_types_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carla_waypoint_types)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carla_waypoint_types
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(carla_waypoint_types_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carla_waypoint_types)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carla_waypoint_types
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(carla_waypoint_types_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carla_waypoint_types)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carla_waypoint_types\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carla_waypoint_types
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(carla_waypoint_types_generate_messages_py nav_msgs_generate_messages_py)
endif()

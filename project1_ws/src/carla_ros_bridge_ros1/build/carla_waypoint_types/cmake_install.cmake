# Install script for directory: /home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install" TYPE PROGRAM FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install" TYPE PROGRAM FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/setup.bash;/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install" TYPE FILE FILES
    "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/setup.bash"
    "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/setup.sh;/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install" TYPE FILE FILES
    "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/setup.sh"
    "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/setup.zsh;/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install" TYPE FILE FILES
    "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/setup.zsh"
    "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/install" TYPE FILE FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_waypoint_types/srv" TYPE FILE FILES
    "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetWaypoint.srv"
    "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/srv/GetActorWaypoint.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_waypoint_types/msg" TYPE FILE FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/msg/CarlaWaypoint.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_waypoint_types/cmake" TYPE FILE FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/carla_waypoint_types-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/devel/.private/carla_waypoint_types/include/carla_waypoint_types")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/devel/.private/carla_waypoint_types/share/roseus/ros/carla_waypoint_types")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/devel/.private/carla_waypoint_types/share/common-lisp/ros/carla_waypoint_types")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/devel/.private/carla_waypoint_types/share/gennodejs/ros/carla_waypoint_types")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/devel/.private/carla_waypoint_types/lib/python3/dist-packages/carla_waypoint_types")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/devel/.private/carla_waypoint_types/lib/python3/dist-packages/carla_waypoint_types")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/carla_waypoint_types.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_waypoint_types/cmake" TYPE FILE FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/carla_waypoint_types-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_waypoint_types/cmake" TYPE FILE FILES
    "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/carla_waypoint_typesConfig.cmake"
    "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/catkin_generated/installspace/carla_waypoint_typesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_waypoint_types" TYPE FILE FILES "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/carla_waypoint_types/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/carla_waypoint_types/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

# CMake generated Testfile for 
# Source directory: /home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/pcl_recorder
# Build directory: /home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/pcl_recorder
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_pcl_recorder_roslaunch-check_launch "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/pcl_recorder/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/pcl_recorder/test_results/pcl_recorder/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/pcl_recorder/test_results/pcl_recorder" "/opt/ros/noetic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/build/pcl_recorder/test_results/pcl_recorder/roslaunch-check_launch.xml\" \"/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/pcl_recorder/launch\" ")
set_tests_properties(_ctest_pcl_recorder_roslaunch-check_launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/pcl_recorder/CMakeLists.txt;15;roslaunch_add_file_check;/home/qrq/Documents/Shenlan_PnC/carla_ros_bridge_ros1/src/pcl_recorder/CMakeLists.txt;0;")
subdirs("gtest")

execute_process(COMMAND "/home/hongwang/project3_ws/build/rosbridge_suite/rosapi/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/hongwang/project3_ws/build/rosbridge_suite/rosapi/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

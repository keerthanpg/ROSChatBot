execute_process(COMMAND "/home/keerthana/catkin_ws/build/message_ui/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/keerthana/catkin_ws/build/message_ui/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

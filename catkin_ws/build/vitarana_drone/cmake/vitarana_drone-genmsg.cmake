# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vitarana_drone: 3 messages, 1 services")

set(MSG_I_FLAGS "-Ivitarana_drone:/home/aj/catkin_ws/src/vitarana_drone/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vitarana_drone_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv" NAME_WE)
add_custom_target(_vitarana_drone_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vitarana_drone" "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv" ""
)

get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg" NAME_WE)
add_custom_target(_vitarana_drone_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vitarana_drone" "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg" ""
)

get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg" NAME_WE)
add_custom_target(_vitarana_drone_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vitarana_drone" "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg" ""
)

get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg" NAME_WE)
add_custom_target(_vitarana_drone_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vitarana_drone" "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vitarana_drone
)
_generate_msg_cpp(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vitarana_drone
)
_generate_msg_cpp(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vitarana_drone
)

### Generating Services
_generate_srv_cpp(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vitarana_drone
)

### Generating Module File
_generate_module_cpp(vitarana_drone
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vitarana_drone
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vitarana_drone_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vitarana_drone_generate_messages vitarana_drone_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_cpp _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_cpp _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_cpp _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_cpp _vitarana_drone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vitarana_drone_gencpp)
add_dependencies(vitarana_drone_gencpp vitarana_drone_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vitarana_drone_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vitarana_drone
)
_generate_msg_eus(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vitarana_drone
)
_generate_msg_eus(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vitarana_drone
)

### Generating Services
_generate_srv_eus(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vitarana_drone
)

### Generating Module File
_generate_module_eus(vitarana_drone
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vitarana_drone
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vitarana_drone_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vitarana_drone_generate_messages vitarana_drone_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_eus _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_eus _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_eus _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_eus _vitarana_drone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vitarana_drone_geneus)
add_dependencies(vitarana_drone_geneus vitarana_drone_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vitarana_drone_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vitarana_drone
)
_generate_msg_lisp(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vitarana_drone
)
_generate_msg_lisp(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vitarana_drone
)

### Generating Services
_generate_srv_lisp(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vitarana_drone
)

### Generating Module File
_generate_module_lisp(vitarana_drone
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vitarana_drone
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vitarana_drone_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vitarana_drone_generate_messages vitarana_drone_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_lisp _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_lisp _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_lisp _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_lisp _vitarana_drone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vitarana_drone_genlisp)
add_dependencies(vitarana_drone_genlisp vitarana_drone_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vitarana_drone_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vitarana_drone
)
_generate_msg_nodejs(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vitarana_drone
)
_generate_msg_nodejs(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vitarana_drone
)

### Generating Services
_generate_srv_nodejs(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vitarana_drone
)

### Generating Module File
_generate_module_nodejs(vitarana_drone
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vitarana_drone
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vitarana_drone_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vitarana_drone_generate_messages vitarana_drone_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_nodejs _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_nodejs _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_nodejs _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_nodejs _vitarana_drone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vitarana_drone_gennodejs)
add_dependencies(vitarana_drone_gennodejs vitarana_drone_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vitarana_drone_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vitarana_drone
)
_generate_msg_py(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vitarana_drone
)
_generate_msg_py(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vitarana_drone
)

### Generating Services
_generate_srv_py(vitarana_drone
  "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vitarana_drone
)

### Generating Module File
_generate_module_py(vitarana_drone
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vitarana_drone
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vitarana_drone_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vitarana_drone_generate_messages vitarana_drone_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/srv/Gripper.srv" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_py _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/prop_speed.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_py _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/MarkerData.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_py _vitarana_drone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/vitarana_drone/msg/edrone_cmd.msg" NAME_WE)
add_dependencies(vitarana_drone_generate_messages_py _vitarana_drone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vitarana_drone_genpy)
add_dependencies(vitarana_drone_genpy vitarana_drone_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vitarana_drone_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vitarana_drone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vitarana_drone
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vitarana_drone_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vitarana_drone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vitarana_drone
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vitarana_drone_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vitarana_drone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vitarana_drone
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vitarana_drone_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vitarana_drone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vitarana_drone
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vitarana_drone_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vitarana_drone)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vitarana_drone\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vitarana_drone
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vitarana_drone_generate_messages_py std_msgs_generate_messages_py)
endif()

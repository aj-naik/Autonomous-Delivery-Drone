# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pkg_ros_basics: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ipkg_ros_basics:/home/aj/catkin_ws/src/pkg_ros_basics/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pkg_ros_basics_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg" NAME_WE)
add_custom_target(_pkg_ros_basics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_ros_basics" "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg" ""
)

get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_pkg_ros_basics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_ros_basics" "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pkg_ros_basics
  "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_ros_basics
)

### Generating Services
_generate_srv_cpp(pkg_ros_basics
  "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_ros_basics
)

### Generating Module File
_generate_module_cpp(pkg_ros_basics
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_ros_basics
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pkg_ros_basics_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pkg_ros_basics_generate_messages pkg_ros_basics_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg" NAME_WE)
add_dependencies(pkg_ros_basics_generate_messages_cpp _pkg_ros_basics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(pkg_ros_basics_generate_messages_cpp _pkg_ros_basics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_ros_basics_gencpp)
add_dependencies(pkg_ros_basics_gencpp pkg_ros_basics_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_ros_basics_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pkg_ros_basics
  "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_ros_basics
)

### Generating Services
_generate_srv_eus(pkg_ros_basics
  "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_ros_basics
)

### Generating Module File
_generate_module_eus(pkg_ros_basics
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_ros_basics
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pkg_ros_basics_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pkg_ros_basics_generate_messages pkg_ros_basics_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg" NAME_WE)
add_dependencies(pkg_ros_basics_generate_messages_eus _pkg_ros_basics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(pkg_ros_basics_generate_messages_eus _pkg_ros_basics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_ros_basics_geneus)
add_dependencies(pkg_ros_basics_geneus pkg_ros_basics_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_ros_basics_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pkg_ros_basics
  "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_ros_basics
)

### Generating Services
_generate_srv_lisp(pkg_ros_basics
  "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_ros_basics
)

### Generating Module File
_generate_module_lisp(pkg_ros_basics
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_ros_basics
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pkg_ros_basics_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pkg_ros_basics_generate_messages pkg_ros_basics_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg" NAME_WE)
add_dependencies(pkg_ros_basics_generate_messages_lisp _pkg_ros_basics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(pkg_ros_basics_generate_messages_lisp _pkg_ros_basics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_ros_basics_genlisp)
add_dependencies(pkg_ros_basics_genlisp pkg_ros_basics_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_ros_basics_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pkg_ros_basics
  "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_ros_basics
)

### Generating Services
_generate_srv_nodejs(pkg_ros_basics
  "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_ros_basics
)

### Generating Module File
_generate_module_nodejs(pkg_ros_basics
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_ros_basics
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pkg_ros_basics_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pkg_ros_basics_generate_messages pkg_ros_basics_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg" NAME_WE)
add_dependencies(pkg_ros_basics_generate_messages_nodejs _pkg_ros_basics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(pkg_ros_basics_generate_messages_nodejs _pkg_ros_basics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_ros_basics_gennodejs)
add_dependencies(pkg_ros_basics_gennodejs pkg_ros_basics_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_ros_basics_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pkg_ros_basics
  "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_ros_basics
)

### Generating Services
_generate_srv_py(pkg_ros_basics
  "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_ros_basics
)

### Generating Module File
_generate_module_py(pkg_ros_basics
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_ros_basics
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pkg_ros_basics_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pkg_ros_basics_generate_messages pkg_ros_basics_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/msg/myMessage.msg" NAME_WE)
add_dependencies(pkg_ros_basics_generate_messages_py _pkg_ros_basics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aj/catkin_ws/src/pkg_ros_basics/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(pkg_ros_basics_generate_messages_py _pkg_ros_basics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_ros_basics_genpy)
add_dependencies(pkg_ros_basics_genpy pkg_ros_basics_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_ros_basics_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_ros_basics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_ros_basics
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pkg_ros_basics_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pkg_ros_basics_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_ros_basics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_ros_basics
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pkg_ros_basics_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pkg_ros_basics_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_ros_basics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_ros_basics
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pkg_ros_basics_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pkg_ros_basics_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_ros_basics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_ros_basics
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pkg_ros_basics_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pkg_ros_basics_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_ros_basics)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_ros_basics\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_ros_basics
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pkg_ros_basics_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pkg_ros_basics_generate_messages_py std_msgs_generate_messages_py)
endif()

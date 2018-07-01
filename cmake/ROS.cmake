# author: zhengwenchao@baidu.com

if ("$ENV{SYSTEM_ENVIRONMENT}" STREQUAL "16.04x86_64")
    set(ROS_ROOT ${CMAKE_SOURCE_DIR}/../../thirdparty/for_x86/ros-base)
    include_directories(SYSTEM ${ROS_ROOT}/include/)
    link_directories(${ROS_ROOT}/lib/)
    find_package(catkin REQUIRED)
elseif ("$ENV{SYSTEM_ENVIRONMENT}" STREQUAL "14.04x86_64")
    set(ROS_ROOT ${CMAKE_SOURCE_DIR}/../../../baidu/adu/ros-base/)
    include_directories(SYSTEM ${ROS_ROOT}/include/)
    link_directories(${ROS_ROOT}/lib/)
    find_package(catkin REQUIRED)
elseif ("$ENV{SYSTEM_ENVIRONMENT}" STREQUAL "16.04aarch64")
    set(ROS_ROOT ${CMAKE_SOURCE_DIR}/../../thirdparty/for_arm/ros-base/aarch64)
    include_directories(SYSTEM ${ROS_ROOT}/include/)
    link_directories(${ROS_ROOT}/lib/)
    find_package(catkin REQUIRED)
endif ("$ENV{SYSTEM_ENVIRONMENT}" STREQUAL "16.04x86_64")

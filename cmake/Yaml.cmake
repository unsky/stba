# author: zhengwenchao@baidu.com

if ("$ENV{SYSTEM_ENVIRONMENT}" STREQUAL "16.04x86_64")
    set(YAMLCPP_ROOT "${CMAKE_SOURCE_DIR}/../../thirdparty/for_x86/yaml_cpp")
    set(YAMLCPP_INCLUDE_DIR "${YAMLCPP_ROOT}/include")
    set(YAMLCPP_LIBRARY_DIR "${YAMLCPP_ROOT}/lib")
    include_directories(SYSTEM ${YAMLCPP_INCLUDE_DIR})
    link_directories(${YAMLCPP_LIBRARY_DIR})
    file(GLOB YAMLCPP_LIBRARY ${YAMLCPP_LIBRARY_DIR}/*)
elseif ("$ENV{SYSTEM_ENVIRONMENT}" STREQUAL "14.04x86_64")
    find_package(YamlCpp REQUIRED)
    include_directories(SYSTEM ${YAMLCPP_INCLUDE_DIR})
    link_directories(${YAMLCPP_LIBRARY})
elseif ("$ENV{SYSTEM_ENVIRONMENT}" STREQUAL "16.04aarch64")
    set(YAMLCPP_ROOT "${CMAKE_SOURCE_DIR}/../../thirdparty/for_arm/yaml_cpp/aarch64")
    set(YAMLCPP_INCLUDE_DIR "${YAMLCPP_ROOT}/include")
    set(YAMLCPP_LIBRARY_DIR "${YAMLCPP_ROOT}/lib")
    include_directories(SYSTEM ${YAMLCPP_INCLUDE_DIR})
    link_directories(${YAMLCPP_LIBRARY_DIR})
    file(GLOB YAMLCPP_LIBRARY ${YAMLCPP_LIBRARY_DIR}/*)
endif ("$ENV{SYSTEM_ENVIRONMENT}" STREQUAL "16.04x86_64")
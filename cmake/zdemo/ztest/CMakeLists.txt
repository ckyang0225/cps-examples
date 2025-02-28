cmake_minimum_required(VERSION 4.0)
set(
  CMAKE_EXPERIMENTAL_FIND_CPS_PACKAGES
  "e82e467b-f997-4464-8ace-b00808fff261"
  )

project(ztest CXX)

find_package(zwrap REQUIRED)

add_executable(ztest ztest.cpp)
target_link_libraries(ztest PRIVATE zwrap::zwrap)

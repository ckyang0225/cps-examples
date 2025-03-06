cmake_minimum_required(VERSION 4.0)
set(
  CMAKE_EXPERIMENTAL_EXPORT_PACKAGE_INFO
  "b80be207-778e-46ba-8080-b23bba22639e"
  )

project(zwrap CXX)

include(GNUInstallDirs)

find_package(zlib-ng REQUIRED)

add_library(zwrap INTERFACE)
target_sources(zwrap PUBLIC FILE_SET HEADERS FILES zwrap.h)
target_compile_features(zwrap INTERFACE cxx_std_17)
target_link_libraries(zwrap INTERFACE zlib-ng::zlib)

install(
  TARGETS zwrap
  EXPORT zwrap
  INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
  FILE_SET HEADERS DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/zwrap
  )
install(
  PACKAGE_INFO zwrap
  EXPORT zwrap
  )

if(CMAKE_VERSION VERSION_GREATER_EQUAL 4.1)
  export(EXPORT zwrap PACKAGE_INFO zwrap)
endif()

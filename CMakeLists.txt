cmake_minimum_required(VERSION 3.14.5)
project(knora-update)
set(CMAKE_CXX_STANDARD 14)

find_package(PkgConfig)
pkg_check_modules(RDF REQUIRED IMPORTED_TARGET redland)
pkg_check_modules(RAPTOR2 REQUIRED IMPORTED_TARGET raptor2)

include_directories(${RDF_INCLUDE_DIRS} ${RAPTOR2_INCLUDE_DIRS})

set(SOURCE_FILES src/knora-update.cpp)
add_executable(knora-update ${SOURCE_FILES})
target_link_libraries(knora-update PkgConfig::RDF PkgConfig::RAPTOR2)

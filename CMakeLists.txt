cmake_minimum_required(VERSION 3.10)
project(SECParser)

find_package(LibXml2 REQUIRED)
include_directories(${LIBXML2_INCLUDE_DIR})

add_executable(sec_engine src/engine/parser_main.cpp src/engine/xbrl_mapper.cpp)
target_link_libraries(sec_engine ${LIBXML2_LIBRARIES} pugixml)

cmake_minimum_required(VERSION 3.15.5)	

project(hello_world)			

set(SOURCE_EXE main.cpp)		

set(SOURCE_LIB func.cpp)			

add_library(func STATIC ${SOURCE_LIB})	

add_executable(main ${SOURCE_EXE})	

target_link_libraries(main func)		



cmake_minimum_required(VERSION 2.8...3.28)
project(cpp_template VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)


add_executable(${PROJECT_NAME} src/main.cpp)

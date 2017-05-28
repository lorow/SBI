cmake_minimum_required(VERSION 3.7)
project(SBC)

set(CMAKE_CXX_STANDARD 14)

set(SOURCE_FILES main.cpp CommandHandler.h)
add_executable(SBC ${SOURCE_FILES})
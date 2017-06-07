cmake_minimum_required(VERSION 3.7)
project(SBI)

set(CMAKE_CXX_STANDARD 14)

set(headers ./brainfuck/Brainfuck.h
            ./brainfuck/interpreter/interpreter.h
            ./brainfuck/translator/translator.h)

set(SOURCE_FILES main.cpp)
add_executable(SBI ${SOURCE_FILES} ${headers})
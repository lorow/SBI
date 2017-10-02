cmake_minimum_required(VERSION 3.7)
project(SBI)

set(CMAKE_CXX_STANDARD 14)

set(headers src/brainfuck/Brainfuck.h
        src/brainfuck/interpreter/interpreter.h
        src/brainfuck/translator/translator.h
        src/commands/CommandHandler.h)

set(SOURCE_FILES main.cpp)
set(${PROJECT_NAME} SBI)
add_executable(SBI ${SOURCE_FILES} ${headers})
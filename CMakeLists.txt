cmake_minimum_required(VERSION 3.10)
project(cpp_brainfuck)

set(CMAKE_CXX_STANDARD 17)

add_executable(cpp_brainfuck main.cpp BrainfuckCPU.cpp BrainfuckCPU.h)
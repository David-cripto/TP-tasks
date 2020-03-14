cmake_minimum_required(VERSION 3.10)
project(li)

set(Mylib lib.h lib.cpp)

add_library(lib SHARED ${Mylib})



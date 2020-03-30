cmake_minimum_required(VERSION 3.0)

set(${CMAKE_SYSTEM_PROCESSOR} arm)
set(${CMAKE_SYSTEM_NAME} Linux)
set(CMAKE_C_COMPILER ${TOOLCHAIN}/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN}/arm-linux-gnueabihf-g++)

project(SimpleLibrary)

include_directories(include)


set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${SimpleLibrary_SOURCE_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${SimpleLibrary_SOURCE_DIR}/lib)
add_subdirectory(src)

set(CMAKE_INSTALL_RPATH ${CMAKE_INSTALL_PREFIX}/lib)
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

add_executable(Main main.cpp)
add_executable(MainLib main_lib.cpp)


install(TARGETS Main DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(TARGETS MainLib DESTINATION ${CMAKE_INSTALL_PREFIX}/bin )
target_link_libraries(MainLib buffer)

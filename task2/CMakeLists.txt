cmake_minimum_required(VERSION 3.10)

project(hello)

set(CPP ${PROJECT_SOURCE_DIR}/C/main.cpp)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)

include_directories(${PROJECT_SOURCE_DIR}/A)
include_directories(${PROJECT_SOURCE_DIR}/B)

execute_process(
	COMMAND bash -c "python3 ./A/preparing.py"
	OUTPUT_VARIABLE outVar
)

add_executable(${PROJECT_NAME} ${CPP})
add_subdirectory(${PROJECT_SOURCE_DIR}/B)
target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR})
target_link_libraries(${PROJECT_NAME} lib)


cmake_minimum_required(VERSION 3.10)

project(hello)

set(CPP ${GTEST_INCLUDE_DIRS} ${PROJECT_SOURCE_DIR}/C/main.cpp)
set(TEST ${GTEST_INCLUDE_DIRS} ${PROJECT_SOURCE_DIR} ${PROJECT_SOURCE_DIR}/C/main_test.cpp)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)

include_directories(${PROJECT_SOURCE_DIR}/A)
include_directories(${PROJECT_SOURCE_DIR}/B)
include_directories(${PROJECT_SOURCE_DIR}/googletest-master)

execute_process(
	COMMAND bash -c "python3 ./A/preparing.py"
	OUTPUT_VARIABLE outVar
)

add_executable(${PROJECT_NAME} ${CPP})
add_executable(CTest ${TEST})

add_subdirectory(${PROJECT_SOURCE_DIR}/B)
add_subdirectory(${PROJECT_SOURCE_DIR}/googletest-master)

target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR})
target_include_directories(CTest PUBLIC ${PROJECT_SOURCE_DIR})
target_link_libraries(${PROJECT_NAME} lib)
target_link_libraries(CTest gtest)

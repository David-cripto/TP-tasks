# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/283/bin/cmake

# The command to remove a file.
RM = /snap/cmake/283/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/david/TP_task2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/david/TP_task2

# Include any dependencies generated for this target.
include B/CMakeFiles/lib.dir/depend.make

# Include the progress variables for this target.
include B/CMakeFiles/lib.dir/progress.make

# Include the compile flags for this target's objects.
include B/CMakeFiles/lib.dir/flags.make

B/CMakeFiles/lib.dir/lib.cpp.o: B/CMakeFiles/lib.dir/flags.make
B/CMakeFiles/lib.dir/lib.cpp.o: B/lib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/david/TP_task2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object B/CMakeFiles/lib.dir/lib.cpp.o"
	cd /home/david/TP_task2/B && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib.dir/lib.cpp.o -c /home/david/TP_task2/B/lib.cpp

B/CMakeFiles/lib.dir/lib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib.dir/lib.cpp.i"
	cd /home/david/TP_task2/B && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/david/TP_task2/B/lib.cpp > CMakeFiles/lib.dir/lib.cpp.i

B/CMakeFiles/lib.dir/lib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib.dir/lib.cpp.s"
	cd /home/david/TP_task2/B && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/david/TP_task2/B/lib.cpp -o CMakeFiles/lib.dir/lib.cpp.s

# Object files for target lib
lib_OBJECTS = \
"CMakeFiles/lib.dir/lib.cpp.o"

# External object files for target lib
lib_EXTERNAL_OBJECTS =

lib/liblib.so: B/CMakeFiles/lib.dir/lib.cpp.o
lib/liblib.so: B/CMakeFiles/lib.dir/build.make
lib/liblib.so: B/CMakeFiles/lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/david/TP_task2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../lib/liblib.so"
	cd /home/david/TP_task2/B && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
B/CMakeFiles/lib.dir/build: lib/liblib.so

.PHONY : B/CMakeFiles/lib.dir/build

B/CMakeFiles/lib.dir/clean:
	cd /home/david/TP_task2/B && $(CMAKE_COMMAND) -P CMakeFiles/lib.dir/cmake_clean.cmake
.PHONY : B/CMakeFiles/lib.dir/clean

B/CMakeFiles/lib.dir/depend:
	cd /home/david/TP_task2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/TP_task2 /home/david/TP_task2/B /home/david/TP_task2 /home/david/TP_task2/B /home/david/TP_task2/B/CMakeFiles/lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : B/CMakeFiles/lib.dir/depend


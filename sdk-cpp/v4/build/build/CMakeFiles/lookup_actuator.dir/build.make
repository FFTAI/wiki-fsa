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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/afer/project_user/wiki-fsa/sdk-cpp/v4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build

# Include any dependencies generated for this target.
include build/CMakeFiles/lookup_actuator.dir/depend.make

# Include the progress variables for this target.
include build/CMakeFiles/lookup_actuator.dir/progress.make

# Include the compile flags for this target's objects.
include build/CMakeFiles/lookup_actuator.dir/flags.make

build/CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.o: build/CMakeFiles/lookup_actuator.dir/flags.make
build/CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.o: ../source/demo_lookup_actuator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object build/CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.o"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.o -c /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/demo_lookup_actuator.cpp

build/CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.i"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/demo_lookup_actuator.cpp > CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.i

build/CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.s"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/demo_lookup_actuator.cpp -o CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.s

build/CMakeFiles/lookup_actuator.dir/fsa.cpp.o: build/CMakeFiles/lookup_actuator.dir/flags.make
build/CMakeFiles/lookup_actuator.dir/fsa.cpp.o: ../source/fsa.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object build/CMakeFiles/lookup_actuator.dir/fsa.cpp.o"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lookup_actuator.dir/fsa.cpp.o -c /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/fsa.cpp

build/CMakeFiles/lookup_actuator.dir/fsa.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lookup_actuator.dir/fsa.cpp.i"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/fsa.cpp > CMakeFiles/lookup_actuator.dir/fsa.cpp.i

build/CMakeFiles/lookup_actuator.dir/fsa.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lookup_actuator.dir/fsa.cpp.s"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/fsa.cpp -o CMakeFiles/lookup_actuator.dir/fsa.cpp.s

build/CMakeFiles/lookup_actuator.dir/os.cpp.o: build/CMakeFiles/lookup_actuator.dir/flags.make
build/CMakeFiles/lookup_actuator.dir/os.cpp.o: ../source/os.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object build/CMakeFiles/lookup_actuator.dir/os.cpp.o"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lookup_actuator.dir/os.cpp.o -c /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/os.cpp

build/CMakeFiles/lookup_actuator.dir/os.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lookup_actuator.dir/os.cpp.i"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/os.cpp > CMakeFiles/lookup_actuator.dir/os.cpp.i

build/CMakeFiles/lookup_actuator.dir/os.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lookup_actuator.dir/os.cpp.s"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/os.cpp -o CMakeFiles/lookup_actuator.dir/os.cpp.s

build/CMakeFiles/lookup_actuator.dir/logger.cpp.o: build/CMakeFiles/lookup_actuator.dir/flags.make
build/CMakeFiles/lookup_actuator.dir/logger.cpp.o: ../source/logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object build/CMakeFiles/lookup_actuator.dir/logger.cpp.o"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lookup_actuator.dir/logger.cpp.o -c /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/logger.cpp

build/CMakeFiles/lookup_actuator.dir/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lookup_actuator.dir/logger.cpp.i"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/logger.cpp > CMakeFiles/lookup_actuator.dir/logger.cpp.i

build/CMakeFiles/lookup_actuator.dir/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lookup_actuator.dir/logger.cpp.s"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source/logger.cpp -o CMakeFiles/lookup_actuator.dir/logger.cpp.s

# Object files for target lookup_actuator
lookup_actuator_OBJECTS = \
"CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.o" \
"CMakeFiles/lookup_actuator.dir/fsa.cpp.o" \
"CMakeFiles/lookup_actuator.dir/os.cpp.o" \
"CMakeFiles/lookup_actuator.dir/logger.cpp.o"

# External object files for target lookup_actuator
lookup_actuator_EXTERNAL_OBJECTS =

../bin/lookup_actuator: build/CMakeFiles/lookup_actuator.dir/demo_lookup_actuator.cpp.o
../bin/lookup_actuator: build/CMakeFiles/lookup_actuator.dir/fsa.cpp.o
../bin/lookup_actuator: build/CMakeFiles/lookup_actuator.dir/os.cpp.o
../bin/lookup_actuator: build/CMakeFiles/lookup_actuator.dir/logger.cpp.o
../bin/lookup_actuator: build/CMakeFiles/lookup_actuator.dir/build.make
../bin/lookup_actuator: build/CMakeFiles/lookup_actuator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../../bin/lookup_actuator"
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lookup_actuator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
build/CMakeFiles/lookup_actuator.dir/build: ../bin/lookup_actuator

.PHONY : build/CMakeFiles/lookup_actuator.dir/build

build/CMakeFiles/lookup_actuator.dir/clean:
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build && $(CMAKE_COMMAND) -P CMakeFiles/lookup_actuator.dir/cmake_clean.cmake
.PHONY : build/CMakeFiles/lookup_actuator.dir/clean

build/CMakeFiles/lookup_actuator.dir/depend:
	cd /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/afer/project_user/wiki-fsa/sdk-cpp/v4 /home/afer/project_user/wiki-fsa/sdk-cpp/v4/source /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build /home/afer/project_user/wiki-fsa/sdk-cpp/v4/build/build/CMakeFiles/lookup_actuator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : build/CMakeFiles/lookup_actuator.dir/depend


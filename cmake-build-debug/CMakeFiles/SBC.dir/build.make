# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /opt/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lorow/CLionProjects/SBC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lorow/CLionProjects/SBC/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SBC.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SBC.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SBC.dir/flags.make

CMakeFiles/SBC.dir/main.cpp.o: CMakeFiles/SBC.dir/flags.make
CMakeFiles/SBC.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lorow/CLionProjects/SBC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SBC.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SBC.dir/main.cpp.o -c /home/lorow/CLionProjects/SBC/main.cpp

CMakeFiles/SBC.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SBC.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lorow/CLionProjects/SBC/main.cpp > CMakeFiles/SBC.dir/main.cpp.i

CMakeFiles/SBC.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SBC.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lorow/CLionProjects/SBC/main.cpp -o CMakeFiles/SBC.dir/main.cpp.s

CMakeFiles/SBC.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/SBC.dir/main.cpp.o.requires

CMakeFiles/SBC.dir/main.cpp.o.provides: CMakeFiles/SBC.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/SBC.dir/build.make CMakeFiles/SBC.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/SBC.dir/main.cpp.o.provides

CMakeFiles/SBC.dir/main.cpp.o.provides.build: CMakeFiles/SBC.dir/main.cpp.o


# Object files for target SBC
SBC_OBJECTS = \
"CMakeFiles/SBC.dir/main.cpp.o"

# External object files for target SBC
SBC_EXTERNAL_OBJECTS =

SBC: CMakeFiles/SBC.dir/main.cpp.o
SBC: CMakeFiles/SBC.dir/build.make
SBC: CMakeFiles/SBC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lorow/CLionProjects/SBC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SBC"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SBC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SBC.dir/build: SBC

.PHONY : CMakeFiles/SBC.dir/build

CMakeFiles/SBC.dir/requires: CMakeFiles/SBC.dir/main.cpp.o.requires

.PHONY : CMakeFiles/SBC.dir/requires

CMakeFiles/SBC.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SBC.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SBC.dir/clean

CMakeFiles/SBC.dir/depend:
	cd /home/lorow/CLionProjects/SBC/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lorow/CLionProjects/SBC /home/lorow/CLionProjects/SBC /home/lorow/CLionProjects/SBC/cmake-build-debug /home/lorow/CLionProjects/SBC/cmake-build-debug /home/lorow/CLionProjects/SBC/cmake-build-debug/CMakeFiles/SBC.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SBC.dir/depend


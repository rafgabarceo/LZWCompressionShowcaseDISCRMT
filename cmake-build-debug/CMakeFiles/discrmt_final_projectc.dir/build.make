# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /home/gabarceo/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.6682.181/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/gabarceo/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.6682.181/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gabarceo/CLionProjects/discrmt-final-projectc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gabarceo/CLionProjects/discrmt-final-projectc/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/discrmt_final_projectc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/discrmt_final_projectc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/discrmt_final_projectc.dir/flags.make

CMakeFiles/discrmt_final_projectc.dir/main.cpp.o: CMakeFiles/discrmt_final_projectc.dir/flags.make
CMakeFiles/discrmt_final_projectc.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabarceo/CLionProjects/discrmt-final-projectc/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/discrmt_final_projectc.dir/main.cpp.o"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/discrmt_final_projectc.dir/main.cpp.o -c /home/gabarceo/CLionProjects/discrmt-final-projectc/main.cpp

CMakeFiles/discrmt_final_projectc.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/discrmt_final_projectc.dir/main.cpp.i"
	/usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabarceo/CLionProjects/discrmt-final-projectc/main.cpp > CMakeFiles/discrmt_final_projectc.dir/main.cpp.i

CMakeFiles/discrmt_final_projectc.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/discrmt_final_projectc.dir/main.cpp.s"
	/usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabarceo/CLionProjects/discrmt-final-projectc/main.cpp -o CMakeFiles/discrmt_final_projectc.dir/main.cpp.s

# Object files for target discrmt_final_projectc
discrmt_final_projectc_OBJECTS = \
"CMakeFiles/discrmt_final_projectc.dir/main.cpp.o"

# External object files for target discrmt_final_projectc
discrmt_final_projectc_EXTERNAL_OBJECTS =

discrmt_final_projectc: CMakeFiles/discrmt_final_projectc.dir/main.cpp.o
discrmt_final_projectc: CMakeFiles/discrmt_final_projectc.dir/build.make
discrmt_final_projectc: CMakeFiles/discrmt_final_projectc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gabarceo/CLionProjects/discrmt-final-projectc/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable discrmt_final_projectc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/discrmt_final_projectc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/discrmt_final_projectc.dir/build: discrmt_final_projectc

.PHONY : CMakeFiles/discrmt_final_projectc.dir/build

CMakeFiles/discrmt_final_projectc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/discrmt_final_projectc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/discrmt_final_projectc.dir/clean

CMakeFiles/discrmt_final_projectc.dir/depend:
	cd /home/gabarceo/CLionProjects/discrmt-final-projectc/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gabarceo/CLionProjects/discrmt-final-projectc /home/gabarceo/CLionProjects/discrmt-final-projectc /home/gabarceo/CLionProjects/discrmt-final-projectc/cmake-build-debug /home/gabarceo/CLionProjects/discrmt-final-projectc/cmake-build-debug /home/gabarceo/CLionProjects/discrmt-final-projectc/cmake-build-debug/CMakeFiles/discrmt_final_projectc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/discrmt_final_projectc.dir/depend

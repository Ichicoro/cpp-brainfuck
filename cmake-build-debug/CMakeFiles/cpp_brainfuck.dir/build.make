# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ichicoro/Projects/cpp-brainfuck

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ichicoro/Projects/cpp-brainfuck/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cpp_brainfuck.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpp_brainfuck.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpp_brainfuck.dir/flags.make

CMakeFiles/cpp_brainfuck.dir/main.cpp.o: CMakeFiles/cpp_brainfuck.dir/flags.make
CMakeFiles/cpp_brainfuck.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ichicoro/Projects/cpp-brainfuck/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpp_brainfuck.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp_brainfuck.dir/main.cpp.o -c /Users/ichicoro/Projects/cpp-brainfuck/main.cpp

CMakeFiles/cpp_brainfuck.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp_brainfuck.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ichicoro/Projects/cpp-brainfuck/main.cpp > CMakeFiles/cpp_brainfuck.dir/main.cpp.i

CMakeFiles/cpp_brainfuck.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp_brainfuck.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ichicoro/Projects/cpp-brainfuck/main.cpp -o CMakeFiles/cpp_brainfuck.dir/main.cpp.s

CMakeFiles/cpp_brainfuck.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/cpp_brainfuck.dir/main.cpp.o.requires

CMakeFiles/cpp_brainfuck.dir/main.cpp.o.provides: CMakeFiles/cpp_brainfuck.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/cpp_brainfuck.dir/build.make CMakeFiles/cpp_brainfuck.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/cpp_brainfuck.dir/main.cpp.o.provides

CMakeFiles/cpp_brainfuck.dir/main.cpp.o.provides.build: CMakeFiles/cpp_brainfuck.dir/main.cpp.o


CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o: CMakeFiles/cpp_brainfuck.dir/flags.make
CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o: ../BrainfuckCPU.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ichicoro/Projects/cpp-brainfuck/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o -c /Users/ichicoro/Projects/cpp-brainfuck/BrainfuckCPU.cpp

CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ichicoro/Projects/cpp-brainfuck/BrainfuckCPU.cpp > CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.i

CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ichicoro/Projects/cpp-brainfuck/BrainfuckCPU.cpp -o CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.s

CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o.requires:

.PHONY : CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o.requires

CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o.provides: CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o.requires
	$(MAKE) -f CMakeFiles/cpp_brainfuck.dir/build.make CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o.provides.build
.PHONY : CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o.provides

CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o.provides.build: CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o


# Object files for target cpp_brainfuck
cpp_brainfuck_OBJECTS = \
"CMakeFiles/cpp_brainfuck.dir/main.cpp.o" \
"CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o"

# External object files for target cpp_brainfuck
cpp_brainfuck_EXTERNAL_OBJECTS =

cpp_brainfuck: CMakeFiles/cpp_brainfuck.dir/main.cpp.o
cpp_brainfuck: CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o
cpp_brainfuck: CMakeFiles/cpp_brainfuck.dir/build.make
cpp_brainfuck: CMakeFiles/cpp_brainfuck.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ichicoro/Projects/cpp-brainfuck/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable cpp_brainfuck"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp_brainfuck.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpp_brainfuck.dir/build: cpp_brainfuck

.PHONY : CMakeFiles/cpp_brainfuck.dir/build

CMakeFiles/cpp_brainfuck.dir/requires: CMakeFiles/cpp_brainfuck.dir/main.cpp.o.requires
CMakeFiles/cpp_brainfuck.dir/requires: CMakeFiles/cpp_brainfuck.dir/BrainfuckCPU.cpp.o.requires

.PHONY : CMakeFiles/cpp_brainfuck.dir/requires

CMakeFiles/cpp_brainfuck.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpp_brainfuck.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpp_brainfuck.dir/clean

CMakeFiles/cpp_brainfuck.dir/depend:
	cd /Users/ichicoro/Projects/cpp-brainfuck/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ichicoro/Projects/cpp-brainfuck /Users/ichicoro/Projects/cpp-brainfuck /Users/ichicoro/Projects/cpp-brainfuck/cmake-build-debug /Users/ichicoro/Projects/cpp-brainfuck/cmake-build-debug /Users/ichicoro/Projects/cpp-brainfuck/cmake-build-debug/CMakeFiles/cpp_brainfuck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpp_brainfuck.dir/depend


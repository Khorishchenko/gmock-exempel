# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/user/Desktop/gmock-exempel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/user/Desktop/gmock-exempel/builds

# Include any dependencies generated for this target.
include CMakeFiles/sample.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sample.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sample.dir/flags.make

CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.o: CMakeFiles/sample.dir/flags.make
CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.o: ../gmock/IBicycleTest.cpp
CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.o: CMakeFiles/sample.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Desktop/gmock-exempel/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.o -MF CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.o.d -o CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.o -c /Users/user/Desktop/gmock-exempel/gmock/IBicycleTest.cpp

CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/Desktop/gmock-exempel/gmock/IBicycleTest.cpp > CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.i

CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/Desktop/gmock-exempel/gmock/IBicycleTest.cpp -o CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.s

# Object files for target sample
sample_OBJECTS = \
"CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.o"

# External object files for target sample
sample_EXTERNAL_OBJECTS =

sample: CMakeFiles/sample.dir/gmock/IBicycleTest.cpp.o
sample: CMakeFiles/sample.dir/build.make
sample: lib/libgtest_main.a
sample: lib/libgmock_main.a
sample: lib/libgmock.a
sample: lib/libgtest.a
sample: CMakeFiles/sample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/user/Desktop/gmock-exempel/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sample.dir/build: sample
.PHONY : CMakeFiles/sample.dir/build

CMakeFiles/sample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sample.dir/clean

CMakeFiles/sample.dir/depend:
	cd /Users/user/Desktop/gmock-exempel/builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/user/Desktop/gmock-exempel /Users/user/Desktop/gmock-exempel /Users/user/Desktop/gmock-exempel/builds /Users/user/Desktop/gmock-exempel/builds /Users/user/Desktop/gmock-exempel/builds/CMakeFiles/sample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sample.dir/depend


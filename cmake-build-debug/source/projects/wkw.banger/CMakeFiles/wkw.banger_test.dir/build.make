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
CMAKE_COMMAND = "/Users/wwerkowicz/Library/Application Support/JetBrains/Toolbox/apps/CLion-ARM/ch-0/203.6682.181/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/wwerkowicz/Library/Application Support/JetBrains/Toolbox/apps/CLion-ARM/ch-0/203.6682.181/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/wwerkowicz/Documents/Max 8/Packages/wkw"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug"

# Include any dependencies generated for this target.
include source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/depend.make

# Include the progress variables for this target.
include source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/progress.make

# Include the compile flags for this target's objects.
include source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/flags.make

source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.o: source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/flags.make
source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.o: ../source/projects/wkw.banger/wkw.banger_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.o"
	cd "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug/source/projects/wkw.banger" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.o -c "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/wkw.banger_test.cpp"

source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.i"
	cd "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug/source/projects/wkw.banger" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/wkw.banger_test.cpp" > CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.i

source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.s"
	cd "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug/source/projects/wkw.banger" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/wkw.banger_test.cpp" -o CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.s

# Object files for target wkw.banger_test
wkw_banger_test_OBJECTS = \
"CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.o"

# External object files for target wkw.banger_test
wkw_banger_test_EXTERNAL_OBJECTS =

../tests/wkw.banger_test: source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/wkw.banger_test.cpp.o
../tests/wkw.banger_test: source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/build.make
../tests/wkw.banger_test: source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../tests/wkw.banger_test"
	cd "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug/source/projects/wkw.banger" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wkw.banger_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/build: ../tests/wkw.banger_test

.PHONY : source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/build

source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/clean:
	cd "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug/source/projects/wkw.banger" && $(CMAKE_COMMAND) -P CMakeFiles/wkw.banger_test.dir/cmake_clean.cmake
.PHONY : source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/clean

source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/depend:
	cd "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/wwerkowicz/Documents/Max 8/Packages/wkw" "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger" "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug" "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug/source/projects/wkw.banger" "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/cmake-build-debug/source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : source/projects/wkw.banger/CMakeFiles/wkw.banger_test.dir/depend


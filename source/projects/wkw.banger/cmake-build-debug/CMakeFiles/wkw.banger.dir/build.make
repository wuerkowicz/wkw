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
CMAKE_SOURCE_DIR = "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/wkw.banger.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/wkw.banger.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wkw.banger.dir/flags.make

CMakeFiles/wkw.banger.dir/wkw.banger.cpp.o: CMakeFiles/wkw.banger.dir/flags.make
CMakeFiles/wkw.banger.dir/wkw.banger.cpp.o: ../wkw.banger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/wkw.banger.dir/wkw.banger.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wkw.banger.dir/wkw.banger.cpp.o -c "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/wkw.banger.cpp"

CMakeFiles/wkw.banger.dir/wkw.banger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wkw.banger.dir/wkw.banger.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/wkw.banger.cpp" > CMakeFiles/wkw.banger.dir/wkw.banger.cpp.i

CMakeFiles/wkw.banger.dir/wkw.banger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wkw.banger.dir/wkw.banger.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/wkw.banger.cpp" -o CMakeFiles/wkw.banger.dir/wkw.banger.cpp.s

# Object files for target wkw.banger
wkw_banger_OBJECTS = \
"CMakeFiles/wkw.banger.dir/wkw.banger.cpp.o"

# External object files for target wkw.banger
wkw_banger_EXTERNAL_OBJECTS =

/Users/wwerkowicz/Documents/Max\ 8/Packages/wkw/externals/wkw.banger.mxo/Contents/MacOS/wkw.banger: CMakeFiles/wkw.banger.dir/wkw.banger.cpp.o
/Users/wwerkowicz/Documents/Max\ 8/Packages/wkw/externals/wkw.banger.mxo/Contents/MacOS/wkw.banger: CMakeFiles/wkw.banger.dir/build.make
/Users/wwerkowicz/Documents/Max\ 8/Packages/wkw/externals/wkw.banger.mxo/Contents/MacOS/wkw.banger: CMakeFiles/wkw.banger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX CFBundle shared module \"/Users/wwerkowicz/Documents/Max 8/Packages/wkw/externals/wkw.banger.mxo/Contents/MacOS/wkw.banger\""
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wkw.banger.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copy PkgInfo"
	cp /Users/wwerkowicz/Documents/Max\ 8/Packages/wkw/source/min-api/max-api/script/PkgInfo /Users/wwerkowicz/Documents/Max\ 8/Packages/wkw/source/projects/wkw.banger/../../../externals/wkw.banger.mxo/Contents/PkgInfo

# Rule to build all files generated by this target.
CMakeFiles/wkw.banger.dir/build: /Users/wwerkowicz/Documents/Max\ 8/Packages/wkw/externals/wkw.banger.mxo/Contents/MacOS/wkw.banger

.PHONY : CMakeFiles/wkw.banger.dir/build

CMakeFiles/wkw.banger.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wkw.banger.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wkw.banger.dir/clean

CMakeFiles/wkw.banger.dir/depend:
	cd "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger" "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger" "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/cmake-build-debug" "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/cmake-build-debug" "/Users/wwerkowicz/Documents/Max 8/Packages/wkw/source/projects/wkw.banger/cmake-build-debug/CMakeFiles/wkw.banger.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/wkw.banger.dir/depend


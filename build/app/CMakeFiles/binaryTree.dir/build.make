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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build

# Include any dependencies generated for this target.
include app/CMakeFiles/binaryTree.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/binaryTree.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/binaryTree.dir/flags.make

app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o: app/CMakeFiles/binaryTree.dir/flags.make
app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o: ../app/binaryTree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binaryTree.dir/binaryTree.cpp.o -c /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/binaryTree.cpp

app/CMakeFiles/binaryTree.dir/binaryTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binaryTree.dir/binaryTree.cpp.i"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/binaryTree.cpp > CMakeFiles/binaryTree.dir/binaryTree.cpp.i

app/CMakeFiles/binaryTree.dir/binaryTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binaryTree.dir/binaryTree.cpp.s"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/binaryTree.cpp -o CMakeFiles/binaryTree.dir/binaryTree.cpp.s

app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o.requires:

.PHONY : app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o.requires

app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o.provides: app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o.requires
	$(MAKE) -f app/CMakeFiles/binaryTree.dir/build.make app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o.provides.build
.PHONY : app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o.provides

app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o.provides.build: app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o


# Object files for target binaryTree
binaryTree_OBJECTS = \
"CMakeFiles/binaryTree.dir/binaryTree.cpp.o"

# External object files for target binaryTree
binaryTree_EXTERNAL_OBJECTS =

app/binaryTree: app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o
app/binaryTree: app/CMakeFiles/binaryTree.dir/build.make
app/binaryTree: app/CMakeFiles/binaryTree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable binaryTree"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/binaryTree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/binaryTree.dir/build: app/binaryTree

.PHONY : app/CMakeFiles/binaryTree.dir/build

app/CMakeFiles/binaryTree.dir/requires: app/CMakeFiles/binaryTree.dir/binaryTree.cpp.o.requires

.PHONY : app/CMakeFiles/binaryTree.dir/requires

app/CMakeFiles/binaryTree.dir/clean:
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && $(CMAKE_COMMAND) -P CMakeFiles/binaryTree.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/binaryTree.dir/clean

app/CMakeFiles/binaryTree.dir/depend:
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app/CMakeFiles/binaryTree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/binaryTree.dir/depend

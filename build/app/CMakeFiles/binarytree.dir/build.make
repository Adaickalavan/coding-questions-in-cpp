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
CMAKE_SOURCE_DIR = /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build

# Include any dependencies generated for this target.
include app/CMakeFiles/binarytree.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/binarytree.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/binarytree.dir/flags.make

app/CMakeFiles/binarytree.dir/binaryTree.cpp.o: app/CMakeFiles/binarytree.dir/flags.make
app/CMakeFiles/binarytree.dir/binaryTree.cpp.o: ../app/binaryTree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object app/CMakeFiles/binarytree.dir/binaryTree.cpp.o"
	cd /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binarytree.dir/binaryTree.cpp.o -c /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/app/binaryTree.cpp

app/CMakeFiles/binarytree.dir/binaryTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binarytree.dir/binaryTree.cpp.i"
	cd /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/app/binaryTree.cpp > CMakeFiles/binarytree.dir/binaryTree.cpp.i

app/CMakeFiles/binarytree.dir/binaryTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binarytree.dir/binaryTree.cpp.s"
	cd /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/app/binaryTree.cpp -o CMakeFiles/binarytree.dir/binaryTree.cpp.s

app/CMakeFiles/binarytree.dir/binaryTree.cpp.o.requires:

.PHONY : app/CMakeFiles/binarytree.dir/binaryTree.cpp.o.requires

app/CMakeFiles/binarytree.dir/binaryTree.cpp.o.provides: app/CMakeFiles/binarytree.dir/binaryTree.cpp.o.requires
	$(MAKE) -f app/CMakeFiles/binarytree.dir/build.make app/CMakeFiles/binarytree.dir/binaryTree.cpp.o.provides.build
.PHONY : app/CMakeFiles/binarytree.dir/binaryTree.cpp.o.provides

app/CMakeFiles/binarytree.dir/binaryTree.cpp.o.provides.build: app/CMakeFiles/binarytree.dir/binaryTree.cpp.o


# Object files for target binarytree
binarytree_OBJECTS = \
"CMakeFiles/binarytree.dir/binaryTree.cpp.o"

# External object files for target binarytree
binarytree_EXTERNAL_OBJECTS =

../bin/binarytree: app/CMakeFiles/binarytree.dir/binaryTree.cpp.o
../bin/binarytree: app/CMakeFiles/binarytree.dir/build.make
../bin/binarytree: app/CMakeFiles/binarytree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/binarytree"
	cd /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/binarytree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/binarytree.dir/build: ../bin/binarytree

.PHONY : app/CMakeFiles/binarytree.dir/build

app/CMakeFiles/binarytree.dir/requires: app/CMakeFiles/binarytree.dir/binaryTree.cpp.o.requires

.PHONY : app/CMakeFiles/binarytree.dir/requires

app/CMakeFiles/binarytree.dir/clean:
	cd /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build/app && $(CMAKE_COMMAND) -P CMakeFiles/binarytree.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/binarytree.dir/clean

app/CMakeFiles/binarytree.dir/depend:
	cd /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/app /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build/app /home/adaickalavan/work/src/github.com/adaickalavan/Go-Incubate/cpp/build/app/CMakeFiles/binarytree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/binarytree.dir/depend


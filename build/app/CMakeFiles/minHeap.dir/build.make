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
include app/CMakeFiles/minHeap.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/minHeap.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/minHeap.dir/flags.make

app/CMakeFiles/minHeap.dir/minHeap.cpp.o: app/CMakeFiles/minHeap.dir/flags.make
app/CMakeFiles/minHeap.dir/minHeap.cpp.o: ../app/minHeap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object app/CMakeFiles/minHeap.dir/minHeap.cpp.o"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/minHeap.dir/minHeap.cpp.o -c /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/minHeap.cpp

app/CMakeFiles/minHeap.dir/minHeap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minHeap.dir/minHeap.cpp.i"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/minHeap.cpp > CMakeFiles/minHeap.dir/minHeap.cpp.i

app/CMakeFiles/minHeap.dir/minHeap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minHeap.dir/minHeap.cpp.s"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/minHeap.cpp -o CMakeFiles/minHeap.dir/minHeap.cpp.s

app/CMakeFiles/minHeap.dir/minHeap.cpp.o.requires:

.PHONY : app/CMakeFiles/minHeap.dir/minHeap.cpp.o.requires

app/CMakeFiles/minHeap.dir/minHeap.cpp.o.provides: app/CMakeFiles/minHeap.dir/minHeap.cpp.o.requires
	$(MAKE) -f app/CMakeFiles/minHeap.dir/build.make app/CMakeFiles/minHeap.dir/minHeap.cpp.o.provides.build
.PHONY : app/CMakeFiles/minHeap.dir/minHeap.cpp.o.provides

app/CMakeFiles/minHeap.dir/minHeap.cpp.o.provides.build: app/CMakeFiles/minHeap.dir/minHeap.cpp.o


# Object files for target minHeap
minHeap_OBJECTS = \
"CMakeFiles/minHeap.dir/minHeap.cpp.o"

# External object files for target minHeap
minHeap_EXTERNAL_OBJECTS =

app/minHeap: app/CMakeFiles/minHeap.dir/minHeap.cpp.o
app/minHeap: app/CMakeFiles/minHeap.dir/build.make
app/minHeap: app/CMakeFiles/minHeap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable minHeap"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/minHeap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/minHeap.dir/build: app/minHeap

.PHONY : app/CMakeFiles/minHeap.dir/build

app/CMakeFiles/minHeap.dir/requires: app/CMakeFiles/minHeap.dir/minHeap.cpp.o.requires

.PHONY : app/CMakeFiles/minHeap.dir/requires

app/CMakeFiles/minHeap.dir/clean:
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && $(CMAKE_COMMAND) -P CMakeFiles/minHeap.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/minHeap.dir/clean

app/CMakeFiles/minHeap.dir/depend:
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app/CMakeFiles/minHeap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/minHeap.dir/depend


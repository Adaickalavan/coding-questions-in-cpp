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
include app/CMakeFiles/sumOfBits.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/sumOfBits.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/sumOfBits.dir/flags.make

app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o: app/CMakeFiles/sumOfBits.dir/flags.make
app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o: ../app/sumOfBits.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o -c /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/sumOfBits.cpp

app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sumOfBits.dir/sumOfBits.cpp.i"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/sumOfBits.cpp > CMakeFiles/sumOfBits.dir/sumOfBits.cpp.i

app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sumOfBits.dir/sumOfBits.cpp.s"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/sumOfBits.cpp -o CMakeFiles/sumOfBits.dir/sumOfBits.cpp.s

app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o.requires:

.PHONY : app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o.requires

app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o.provides: app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o.requires
	$(MAKE) -f app/CMakeFiles/sumOfBits.dir/build.make app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o.provides.build
.PHONY : app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o.provides

app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o.provides.build: app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o


# Object files for target sumOfBits
sumOfBits_OBJECTS = \
"CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o"

# External object files for target sumOfBits
sumOfBits_EXTERNAL_OBJECTS =

app/sumOfBits: app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o
app/sumOfBits: app/CMakeFiles/sumOfBits.dir/build.make
app/sumOfBits: app/CMakeFiles/sumOfBits.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sumOfBits"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sumOfBits.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/sumOfBits.dir/build: app/sumOfBits

.PHONY : app/CMakeFiles/sumOfBits.dir/build

app/CMakeFiles/sumOfBits.dir/requires: app/CMakeFiles/sumOfBits.dir/sumOfBits.cpp.o.requires

.PHONY : app/CMakeFiles/sumOfBits.dir/requires

app/CMakeFiles/sumOfBits.dir/clean:
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && $(CMAKE_COMMAND) -P CMakeFiles/sumOfBits.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/sumOfBits.dir/clean

app/CMakeFiles/sumOfBits.dir/depend:
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app/CMakeFiles/sumOfBits.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/sumOfBits.dir/depend


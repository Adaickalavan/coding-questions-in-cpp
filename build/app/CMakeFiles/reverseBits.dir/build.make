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
CMAKE_SOURCE_DIR = /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build

# Include any dependencies generated for this target.
include app/CMakeFiles/reverseBits.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/reverseBits.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/reverseBits.dir/flags.make

app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o: app/CMakeFiles/reverseBits.dir/flags.make
app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o: ../app/reverseBits.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o"
	cd /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/reverseBits.dir/reverseBits.cpp.o -c /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/app/reverseBits.cpp

app/CMakeFiles/reverseBits.dir/reverseBits.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reverseBits.dir/reverseBits.cpp.i"
	cd /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/app/reverseBits.cpp > CMakeFiles/reverseBits.dir/reverseBits.cpp.i

app/CMakeFiles/reverseBits.dir/reverseBits.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reverseBits.dir/reverseBits.cpp.s"
	cd /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/app/reverseBits.cpp -o CMakeFiles/reverseBits.dir/reverseBits.cpp.s

app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o.requires:

.PHONY : app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o.requires

app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o.provides: app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o.requires
	$(MAKE) -f app/CMakeFiles/reverseBits.dir/build.make app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o.provides.build
.PHONY : app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o.provides

app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o.provides.build: app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o


# Object files for target reverseBits
reverseBits_OBJECTS = \
"CMakeFiles/reverseBits.dir/reverseBits.cpp.o"

# External object files for target reverseBits
reverseBits_EXTERNAL_OBJECTS =

app/reverseBits: app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o
app/reverseBits: app/CMakeFiles/reverseBits.dir/build.make
app/reverseBits: app/CMakeFiles/reverseBits.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable reverseBits"
	cd /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reverseBits.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/reverseBits.dir/build: app/reverseBits

.PHONY : app/CMakeFiles/reverseBits.dir/build

app/CMakeFiles/reverseBits.dir/requires: app/CMakeFiles/reverseBits.dir/reverseBits.cpp.o.requires

.PHONY : app/CMakeFiles/reverseBits.dir/requires

app/CMakeFiles/reverseBits.dir/clean:
	cd /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build/app && $(CMAKE_COMMAND) -P CMakeFiles/reverseBits.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/reverseBits.dir/clean

app/CMakeFiles/reverseBits.dir/depend:
	cd /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/app /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build/app /home/adaickalavan/work/src/github.com/adaickalavan/coding-questions-in-cpp/build/app/CMakeFiles/reverseBits.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/reverseBits.dir/depend


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
include app/CMakeFiles/longestsubstring.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/longestsubstring.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/longestsubstring.dir/flags.make

app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o: app/CMakeFiles/longestsubstring.dir/flags.make
app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o: ../app/longestSubstring.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o -c /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/longestSubstring.cpp

app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/longestsubstring.dir/longestSubstring.cpp.i"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/longestSubstring.cpp > CMakeFiles/longestsubstring.dir/longestSubstring.cpp.i

app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/longestsubstring.dir/longestSubstring.cpp.s"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app/longestSubstring.cpp -o CMakeFiles/longestsubstring.dir/longestSubstring.cpp.s

app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o.requires:

.PHONY : app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o.requires

app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o.provides: app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o.requires
	$(MAKE) -f app/CMakeFiles/longestsubstring.dir/build.make app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o.provides.build
.PHONY : app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o.provides

app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o.provides.build: app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o


# Object files for target longestsubstring
longestsubstring_OBJECTS = \
"CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o"

# External object files for target longestsubstring
longestsubstring_EXTERNAL_OBJECTS =

../bin/longestsubstring: app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o
../bin/longestsubstring: app/CMakeFiles/longestsubstring.dir/build.make
../bin/longestsubstring: app/CMakeFiles/longestsubstring.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/longestsubstring"
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/longestsubstring.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/longestsubstring.dir/build: ../bin/longestsubstring

.PHONY : app/CMakeFiles/longestsubstring.dir/build

app/CMakeFiles/longestsubstring.dir/requires: app/CMakeFiles/longestsubstring.dir/longestSubstring.cpp.o.requires

.PHONY : app/CMakeFiles/longestsubstring.dir/requires

app/CMakeFiles/longestsubstring.dir/clean:
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app && $(CMAKE_COMMAND) -P CMakeFiles/longestsubstring.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/longestsubstring.dir/clean

app/CMakeFiles/longestsubstring.dir/depend:
	cd /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/app /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app /home/adaickalavan/GoWorkspace/src/github.com/Adaickalavan/coding-questions-in-cpp/build/app/CMakeFiles/longestsubstring.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/longestsubstring.dir/depend


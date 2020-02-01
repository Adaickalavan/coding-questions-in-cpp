# CMake version cmake@v3.10.x
cmake_minimum_required(VERSION 3.10 FATAL_ERROR)

# Project name and a few useful settings. Other commands can pick up the results
project(cpp_codes
    VERSION 0.1.0)

# Build settings
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin/)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/out/) 

# Add subdirectories - executable
add_subdirectory(./app/)

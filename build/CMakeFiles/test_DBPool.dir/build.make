# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_SOURCE_DIR = /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/build

# Include any dependencies generated for this target.
include CMakeFiles/test_DBPool.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_DBPool.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_DBPool.dir/flags.make

CMakeFiles/test_DBPool.dir/test_DBPool.cpp.o: CMakeFiles/test_DBPool.dir/flags.make
CMakeFiles/test_DBPool.dir/test_DBPool.cpp.o: ../test_DBPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_DBPool.dir/test_DBPool.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_DBPool.dir/test_DBPool.cpp.o -c /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/test_DBPool.cpp

CMakeFiles/test_DBPool.dir/test_DBPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_DBPool.dir/test_DBPool.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/test_DBPool.cpp > CMakeFiles/test_DBPool.dir/test_DBPool.cpp.i

CMakeFiles/test_DBPool.dir/test_DBPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_DBPool.dir/test_DBPool.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/test_DBPool.cpp -o CMakeFiles/test_DBPool.dir/test_DBPool.cpp.s

CMakeFiles/test_DBPool.dir/DBPool.cpp.o: CMakeFiles/test_DBPool.dir/flags.make
CMakeFiles/test_DBPool.dir/DBPool.cpp.o: ../DBPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_DBPool.dir/DBPool.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_DBPool.dir/DBPool.cpp.o -c /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/DBPool.cpp

CMakeFiles/test_DBPool.dir/DBPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_DBPool.dir/DBPool.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/DBPool.cpp > CMakeFiles/test_DBPool.dir/DBPool.cpp.i

CMakeFiles/test_DBPool.dir/DBPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_DBPool.dir/DBPool.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/DBPool.cpp -o CMakeFiles/test_DBPool.dir/DBPool.cpp.s

# Object files for target test_DBPool
test_DBPool_OBJECTS = \
"CMakeFiles/test_DBPool.dir/test_DBPool.cpp.o" \
"CMakeFiles/test_DBPool.dir/DBPool.cpp.o"

# External object files for target test_DBPool
test_DBPool_EXTERNAL_OBJECTS =

test_DBPool: CMakeFiles/test_DBPool.dir/test_DBPool.cpp.o
test_DBPool: CMakeFiles/test_DBPool.dir/DBPool.cpp.o
test_DBPool: CMakeFiles/test_DBPool.dir/build.make
test_DBPool: CMakeFiles/test_DBPool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test_DBPool"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_DBPool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_DBPool.dir/build: test_DBPool

.PHONY : CMakeFiles/test_DBPool.dir/build

CMakeFiles/test_DBPool.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_DBPool.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_DBPool.dir/clean

CMakeFiles/test_DBPool.dir/depend:
	cd /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/build /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/build /mnt/hgfs/ubuntu/vip/20200108-connection-pool/src/mysql-pool/build/CMakeFiles/test_DBPool.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_DBPool.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/marcin/projects/DataBase

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marcin/projects/DataBase/build

# Include any dependencies generated for this target.
include src/database/CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/database/CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include src/database/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include src/database/CMakeFiles/main.dir/flags.make

src/database/CMakeFiles/main.dir/main.cpp.o: src/database/CMakeFiles/main.dir/flags.make
src/database/CMakeFiles/main.dir/main.cpp.o: ../src/database/main.cpp
src/database/CMakeFiles/main.dir/main.cpp.o: src/database/CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcin/projects/DataBase/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/database/CMakeFiles/main.dir/main.cpp.o"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/database/CMakeFiles/main.dir/main.cpp.o -MF CMakeFiles/main.dir/main.cpp.o.d -o CMakeFiles/main.dir/main.cpp.o -c /home/marcin/projects/DataBase/src/database/main.cpp

src/database/CMakeFiles/main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcin/projects/DataBase/src/database/main.cpp > CMakeFiles/main.dir/main.cpp.i

src/database/CMakeFiles/main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcin/projects/DataBase/src/database/main.cpp -o CMakeFiles/main.dir/main.cpp.s

src/database/CMakeFiles/main.dir/rooms.cpp.o: src/database/CMakeFiles/main.dir/flags.make
src/database/CMakeFiles/main.dir/rooms.cpp.o: ../src/database/rooms.cpp
src/database/CMakeFiles/main.dir/rooms.cpp.o: src/database/CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcin/projects/DataBase/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/database/CMakeFiles/main.dir/rooms.cpp.o"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/database/CMakeFiles/main.dir/rooms.cpp.o -MF CMakeFiles/main.dir/rooms.cpp.o.d -o CMakeFiles/main.dir/rooms.cpp.o -c /home/marcin/projects/DataBase/src/database/rooms.cpp

src/database/CMakeFiles/main.dir/rooms.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/rooms.cpp.i"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcin/projects/DataBase/src/database/rooms.cpp > CMakeFiles/main.dir/rooms.cpp.i

src/database/CMakeFiles/main.dir/rooms.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/rooms.cpp.s"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcin/projects/DataBase/src/database/rooms.cpp -o CMakeFiles/main.dir/rooms.cpp.s

src/database/CMakeFiles/main.dir/database.cpp.o: src/database/CMakeFiles/main.dir/flags.make
src/database/CMakeFiles/main.dir/database.cpp.o: ../src/database/database.cpp
src/database/CMakeFiles/main.dir/database.cpp.o: src/database/CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcin/projects/DataBase/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/database/CMakeFiles/main.dir/database.cpp.o"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/database/CMakeFiles/main.dir/database.cpp.o -MF CMakeFiles/main.dir/database.cpp.o.d -o CMakeFiles/main.dir/database.cpp.o -c /home/marcin/projects/DataBase/src/database/database.cpp

src/database/CMakeFiles/main.dir/database.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/database.cpp.i"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcin/projects/DataBase/src/database/database.cpp > CMakeFiles/main.dir/database.cpp.i

src/database/CMakeFiles/main.dir/database.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/database.cpp.s"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcin/projects/DataBase/src/database/database.cpp -o CMakeFiles/main.dir/database.cpp.s

src/database/CMakeFiles/main.dir/foo.cpp.o: src/database/CMakeFiles/main.dir/flags.make
src/database/CMakeFiles/main.dir/foo.cpp.o: ../src/database/foo.cpp
src/database/CMakeFiles/main.dir/foo.cpp.o: src/database/CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcin/projects/DataBase/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/database/CMakeFiles/main.dir/foo.cpp.o"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/database/CMakeFiles/main.dir/foo.cpp.o -MF CMakeFiles/main.dir/foo.cpp.o.d -o CMakeFiles/main.dir/foo.cpp.o -c /home/marcin/projects/DataBase/src/database/foo.cpp

src/database/CMakeFiles/main.dir/foo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/foo.cpp.i"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcin/projects/DataBase/src/database/foo.cpp > CMakeFiles/main.dir/foo.cpp.i

src/database/CMakeFiles/main.dir/foo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/foo.cpp.s"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcin/projects/DataBase/src/database/foo.cpp -o CMakeFiles/main.dir/foo.cpp.s

src/database/CMakeFiles/main.dir/dummy.cpp.o: src/database/CMakeFiles/main.dir/flags.make
src/database/CMakeFiles/main.dir/dummy.cpp.o: ../src/database/dummy.cpp
src/database/CMakeFiles/main.dir/dummy.cpp.o: src/database/CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcin/projects/DataBase/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/database/CMakeFiles/main.dir/dummy.cpp.o"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/database/CMakeFiles/main.dir/dummy.cpp.o -MF CMakeFiles/main.dir/dummy.cpp.o.d -o CMakeFiles/main.dir/dummy.cpp.o -c /home/marcin/projects/DataBase/src/database/dummy.cpp

src/database/CMakeFiles/main.dir/dummy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/dummy.cpp.i"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcin/projects/DataBase/src/database/dummy.cpp > CMakeFiles/main.dir/dummy.cpp.i

src/database/CMakeFiles/main.dir/dummy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/dummy.cpp.s"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcin/projects/DataBase/src/database/dummy.cpp -o CMakeFiles/main.dir/dummy.cpp.s

src/database/CMakeFiles/main.dir/fileManager.cpp.o: src/database/CMakeFiles/main.dir/flags.make
src/database/CMakeFiles/main.dir/fileManager.cpp.o: ../src/database/fileManager.cpp
src/database/CMakeFiles/main.dir/fileManager.cpp.o: src/database/CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcin/projects/DataBase/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/database/CMakeFiles/main.dir/fileManager.cpp.o"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/database/CMakeFiles/main.dir/fileManager.cpp.o -MF CMakeFiles/main.dir/fileManager.cpp.o.d -o CMakeFiles/main.dir/fileManager.cpp.o -c /home/marcin/projects/DataBase/src/database/fileManager.cpp

src/database/CMakeFiles/main.dir/fileManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/fileManager.cpp.i"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcin/projects/DataBase/src/database/fileManager.cpp > CMakeFiles/main.dir/fileManager.cpp.i

src/database/CMakeFiles/main.dir/fileManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/fileManager.cpp.s"
	cd /home/marcin/projects/DataBase/build/src/database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcin/projects/DataBase/src/database/fileManager.cpp -o CMakeFiles/main.dir/fileManager.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cpp.o" \
"CMakeFiles/main.dir/rooms.cpp.o" \
"CMakeFiles/main.dir/database.cpp.o" \
"CMakeFiles/main.dir/foo.cpp.o" \
"CMakeFiles/main.dir/dummy.cpp.o" \
"CMakeFiles/main.dir/fileManager.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

src/database/main: src/database/CMakeFiles/main.dir/main.cpp.o
src/database/main: src/database/CMakeFiles/main.dir/rooms.cpp.o
src/database/main: src/database/CMakeFiles/main.dir/database.cpp.o
src/database/main: src/database/CMakeFiles/main.dir/foo.cpp.o
src/database/main: src/database/CMakeFiles/main.dir/dummy.cpp.o
src/database/main: src/database/CMakeFiles/main.dir/fileManager.cpp.o
src/database/main: src/database/CMakeFiles/main.dir/build.make
src/database/main: src/database/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marcin/projects/DataBase/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable main"
	cd /home/marcin/projects/DataBase/build/src/database && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/database/CMakeFiles/main.dir/build: src/database/main
.PHONY : src/database/CMakeFiles/main.dir/build

src/database/CMakeFiles/main.dir/clean:
	cd /home/marcin/projects/DataBase/build/src/database && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : src/database/CMakeFiles/main.dir/clean

src/database/CMakeFiles/main.dir/depend:
	cd /home/marcin/projects/DataBase/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcin/projects/DataBase /home/marcin/projects/DataBase/src/database /home/marcin/projects/DataBase/build /home/marcin/projects/DataBase/build/src/database /home/marcin/projects/DataBase/build/src/database/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/database/CMakeFiles/main.dir/depend


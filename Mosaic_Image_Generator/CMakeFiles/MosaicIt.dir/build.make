# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator

# Include any dependencies generated for this target.
include CMakeFiles/MosaicIt.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MosaicIt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MosaicIt.dir/flags.make

CMakeFiles/MosaicIt.dir/main.cpp.o: CMakeFiles/MosaicIt.dir/flags.make
CMakeFiles/MosaicIt.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MosaicIt.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MosaicIt.dir/main.cpp.o -c /home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator/main.cpp

CMakeFiles/MosaicIt.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MosaicIt.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator/main.cpp > CMakeFiles/MosaicIt.dir/main.cpp.i

CMakeFiles/MosaicIt.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MosaicIt.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator/main.cpp -o CMakeFiles/MosaicIt.dir/main.cpp.s

# Object files for target MosaicIt
MosaicIt_OBJECTS = \
"CMakeFiles/MosaicIt.dir/main.cpp.o"

# External object files for target MosaicIt
MosaicIt_EXTERNAL_OBJECTS =

MosaicIt: CMakeFiles/MosaicIt.dir/main.cpp.o
MosaicIt: CMakeFiles/MosaicIt.dir/build.make
MosaicIt: /usr/local/lib/libopencv_gapi.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_highgui.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_ml.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_objdetect.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_photo.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_stitching.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_video.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_videoio.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_imgcodecs.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_dnn.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_calib3d.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_features2d.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_flann.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_imgproc.so.4.5.5
MosaicIt: /usr/local/lib/libopencv_core.so.4.5.5
MosaicIt: CMakeFiles/MosaicIt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MosaicIt"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MosaicIt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MosaicIt.dir/build: MosaicIt

.PHONY : CMakeFiles/MosaicIt.dir/build

CMakeFiles/MosaicIt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MosaicIt.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MosaicIt.dir/clean

CMakeFiles/MosaicIt.dir/depend:
	cd /home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator /home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator /home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator /home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator /home/alireza/Documents/Daneshgah/Projects/ImageProcessing/ImageProcessing/Mosaic_Image_Generator/CMakeFiles/MosaicIt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MosaicIt.dir/depend


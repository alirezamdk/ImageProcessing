cmake_minimum_required(VERSION 2.8)
project( DoSketche )
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( DoSketch main.cpp )
target_link_libraries( DoSketch ${OpenCV_LIBS} )
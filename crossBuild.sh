#!/bin/bash
rm -r build/
rm -r bin/

#Linux
mkdir build
mkdir bin
cd build
cmake .. 
make -j4
cd ..
cp ./build/src/libglfw3.a ./bin/
mv ./bin/libglfw3.a ./bin/libglfw3Linux.a

rm -r build/

#Windows
mkdir build
cd build
cmake .. -D CMAKE_TOOLCHAIN_FILE=../CMake/x86_64-w64-mingw32.cmake
make -j4
cd ..
cp ./build/src/libglfw3.a ./bin/
mv ./bin/libglfw3.a ./bin/libglfw3Win.a

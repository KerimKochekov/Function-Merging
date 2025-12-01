#!/usr/bin/env bash

mode=$1

if [[ "$mode" != "sanitize" && "$mode" != "debug" && "$mode" != "release" ]]; then
  echo "Error: mode must be 'sanitize', 'debug', or 'release'."
  exit 1
fi

cd function-merging-branch-reord

rm -r build
mkdir build
path=$(pwd)
cd build
if [ "$mode" == "sanitize" ]; then
  cmake -DLT_LLVM_INSTALL_DIR=$LLVM_DIR -DCMAKE_C_COMPILER=$CLANG -DCMAKE_CXX_COMPILER=$CLANGPP -DCMAKE_CXX_FLAGS="-fsanitize=address -shared-libasan" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXE_LINKER_FLAGS="-fsanitize=address" -DCMAKE_EXPORT_COMPILE_COMMANDS=ON $path
elif [ "$mode" == "debug" ]; then
  cmake -DLT_LLVM_INSTALL_DIR=$LLVM_DIR -DCMAKE_C_COMPILER=$CLANG -DCMAKE_CXX_COMPILER=$CLANGPP -DCMAKE_CXX_FLAGS="-g" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 $path
else 
  cmake -DLT_LLVM_INSTALL_DIR=$LLVM_DIR -DCMAKE_C_COMPILER=$CLANG -DCMAKE_CXX_COMPILER=$CLANGPP -DCMAKE_CXX_FLAGS="-O3" -DCMAKE_BUILD_TYPE=Release -DCMAKE_EXPORT_COMPILE_COMMANDS=1 $path
fi
make
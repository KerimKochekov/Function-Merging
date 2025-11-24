#!/bin/bash

# Function to process each argument
process_argument() {
  local arg=$1
  
  curDir=$(pwd)

  # Remove the directory benchspec/CPU/arg/build
  rm -rf "benchspec/CPU/$arg/build"
  rm -rf "benchspec/CPU/$arg/exe"
  
  mkdir "benchspec/CPU/$arg/build"
  mkdir "benchspec/CPU/$arg/exe"

  DEST="$curDir/../${flags_underscored}/$arg/units"
  llvm-link-11 --preserve-ll-uselistorder $DEST/*.ll -o $curDir/benchspec/CPU/$arg/build/$arg_linked.bc
  llc-11 -filetype=obj $curDir/benchspec/CPU/$arg/build/$arg_linked.bc -o $curDir/benchspec/CPU/$arg/build/$arg.o
  clang++-11 -z muldefs -fuse-ld=lld -fopenmp $curDir/benchspec/CPU/$arg/build/$arg.o -lm -o $curDir/benchspec/CPU/$arg/exe/$arg
#  llvm-link-11 --only-needed $DEST/*.ll -S -o $curDir/benchspec/CPU/$arg/build/$arg_linked.ll
#  clang -Wno-unused-command-line-argument -c $flags $curDir/benchspec/CPU/$arg/build/$arg_linked.ll -o $curDir/benchspec/CPU/$arg/build/$arg.o
#  clang++-11 -z muldefs -fuse-ld=lld -fopenmp $curDir/benchspec/CPU/$arg/build/$arg.o -lm -o $curDir/benchspec/CPU/$arg/exe/$arg.out
}

. shrc
# Get the first two arguments
llvm_path=$1
flags=$2
# Replace every space in flags with _
flags_underscored=${flags// /_}

# Iterate over each argument provided to the script
shift 2
for arg in "$@"; do
  echo "Processing $arg"
  process_argument "$arg"
done

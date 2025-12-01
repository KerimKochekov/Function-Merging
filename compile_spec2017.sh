#!/bin/bash

# Function to process each argument
process_argument() {
  local arg=$1

  curDir=$(pwd)

  # Remove the directory benchspec/CPU/arg/build
  rm -rf "benchspec/CPU/$arg/build"
  rm -rf "benchspec/CPU/$arg/exe"

  # Execute the runcpu command
  if [[ "$arg" == "620.omnetpp_s" || "$arg" == "520.omnetpp_r" ||  "$arg" == "508.namd_r" || "$arg" == "511.povray_r" ]]; then
    runcpu --config="${flags_underscored}cpp14.cfg" --tune=base --action=build "$arg"
  elif [[ "$arg" == "510.parest_r" ]]; then
    runcpu --config="${flags_underscored}cpp03.cfg" --tune=base --action=build "$arg"
  else
    runcpu --config="${flags_underscored}.cfg" --tune=base --action=build "$arg"
  fi

  DEST="$curDir/../${flags_underscored}/$arg/units"
  # Create the destination directory if it doesn't exist
  mkdir -p $DEST
  rm $DEST/*

  for dir in benchspec/CPU/$arg/build/build*; do
    local dir=$dir
  done

# new code
  # Construct the pattern for make.X.out where X is the arg with the first number and dot removed
  modified_arg=$(echo "$arg" | sed 's/^[0-9]*\.//')
  # Find the file that matches make.out or make.$modified_arg.out
  make_out_file=$(find "$dir" -name "make.out" -o -name "make.$modified_arg.out" | head -n 1)
  if [ -z "$make_out_file" ]; then
    echo "make.out or make.$modified_arg.out file not found in $dir"
    return 1
  fi
  # Find the last line in make_out_file that starts with ${llvm_path}
  last_line=$(grep "^${llvm_path}" "$make_out_file" | tail -n 1)


  # Extract all tokens ending with .o from the last line
  o_files=$(echo "$last_line" | grep -o '[^ ]*\.o')
  for o_file in $o_files; do
    LLorBC_file=${o_file//\//-}
    LLorBC_file=${LLorBC_file/.o/.${format}}
    echo ${LLorBC_file}
    echo ${dir}/${o_file}
    cp ${dir}/${o_file} $DEST/${LLorBC_file}
  done
  

  linked_DEST="$curDir/../${flags_underscored}-${format}/$arg/linked"
  mkdir -p $linked_DEST
  rm $linked_DEST/*

  linkedLLorBC=$linked_DEST/${arg}.${format}
  linked_o=$linked_DEST/${arg}.o
  linked_out=$linked_DEST/${arg}.out

  isS=""
  if [ "$format" == "ll" ]; then
    isS="-S"
  fi

  set -x
  $LLLINK $DEST/*.${format} ${isS} -o ${linkedLLorBC}
  $CLANG -Wno-unused-command-line-argument -c ${flags} ${linkedLLorBC} -o ${linked_o}
  $CLANGPP -z muldefs ${linked_o} -lm -o ${linked_out}
  { set +x; } 2>/dev/null

##########################################
  cd $curDir
}

cd spec2017
. shrc
# Get the first two arguments
llvm_path=$1
flags=$2
format=$3
if [[ "$format" != "ll" && "$format" != "bc" ]]; then
  echo "Error: format must be 'll' or 'bc'"
  exit 1
fi

LLorBC="-emit-llvm -S"
if [ "$format" == "bc" ]; then
  LLorBC="-emit-llvm -c"
fi


# Replace every space in flags with _, and remove the -'s
flags_underscored=${flags// /_}
flags_underscored=${flags_underscored//-/}
# Copy the configuration file
cp "../myexpcfg.cfg" "./config/${flags_underscored}.cfg"
cp "../myexpcfg.cfg" "./config/${flags_underscored}cpp14.cfg"
cp "../myexpcfg.cfg" "./config/${flags_underscored}cpp03.cfg"


sed -i "s|XXX|${llvm_path}|g; s|YYY|${flags} ${LLorBC}|g; s|ZZZ|${flags} ${LLorBC}|g" ./config/"${flags_underscored}".cfg
sed -i "s|XXX|${llvm_path}|g; s|YYY|${flags} ${LLorBC}|g; s|ZZZ|-std=c++14 ${flags} ${LLorBC}|g" ./config/"${flags_underscored}"cpp14.cfg
sed -i "s|XXX|${llvm_path}|g; s|YYY|${flags} ${LLorBC}|g; s|ZZZ|-std=c++03 ${flags} ${LLorBC}|g" ./config/"${flags_underscored}"cpp03.cfg

# Iterate over each argument provided to the script

shift 3
for arg in "$@"; do
  echo "Processing $arg"
  process_argument "$arg"
done

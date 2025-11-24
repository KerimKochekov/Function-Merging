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
  build_dir=$dir

  # Construct the pattern for make.X.out where X is the arg with the first number and dot removed
  modified_arg=$(echo "$arg" | sed 's/^[0-9]*\.//')
  # Find the file that matches make.out or make.$modified_arg.out
  make_out_file=$(find "$build_dir" -name "make.out" -o -name "make.$modified_arg.out" | head -n 1)
  if [ -z "$make_out_file" ]; then
    echo "make.out or make.$modified_arg.out file not found in $build_dir"
    return 1
  fi
  # Find the last line in make_out_file that starts with ${llvm_path}
  last_line=$(grep "^${llvm_path}" "$make_out_file" | tail -n 1)


  # Extract all tokens ending with .o from the last line
  o_files=$(echo "$last_line" | grep -o '[^ ]*\.o')
  for o_file in $o_files; do
    ll_file=${o_file//\//-}
    ll_file=${ll_file/.o/.ll}
    # echo ${ll_file}
    # echo ${build_dir}/${o_file}
    cp ${build_dir}/${o_file} $DEST/${ll_file}
  done
  
  # opt_DEST="$curDir/../${flags_underscored}/$arg/opt"
  # mkdir -p $opt_DEST
  # rm $opt_DEST/*
  
  # for dir in $DEST/*.ll; do
  #   opt-11 --enable-new-pm=false -load $pass_path $opt_flags -S $dir -o $opt_DEST/$(basename $dir)
  # done
  # rm $DEST/*

  linked_DEST="$curDir/../${flags_underscored}/$arg/linked"
  mkdir -p $linked_DEST
  rm $linked_DEST/*
  
  linked_opt_DEST="$curDir/../${flags_underscored}/$arg/linked${opt_flags}"
  mkdir -p $linked_opt_DEST
  rm $linked_opt_DEST/*

  linked_ll=$linked_DEST/${arg}.ll
  linked_o=$linked_DEST/${arg}.o
  linked_out=$linked_DEST/${arg}.out
  
  linked_opt_ll=$linked_opt_DEST/${arg}.ll
  linked_opt_o=$linked_opt_DEST/${arg}.o
  linked_opt_out=$linked_opt_DEST/${arg}.out

  set -x
  llvm-link-11 $DEST/*.ll -S -o ${linked_ll}
  clang-11 -Wno-unused-command-line-argument -c ${flags} ${linked_ll} -o ${linked_o}
  clang++-11 -z muldefs -fuse-ld=lld -fopenmp ${linked_o} -lm -o ${linked_out}
  
  opt-11 --enable-new-pm=false -load ${pass_path} ${opt_flags} -S ${linked_ll} -o ${linked_opt_ll}
  clang-11 -Wno-unused-command-line-argument -c ${flags} ${linked_opt_ll} -o ${linked_opt_o}
  clang++-11 -z muldefs -fuse-ld=lld -fopenmp ${linked_opt_o} -lm -o ${linked_opt_out}
  { set +x; } 2>/dev/null
  
  echo -n "Size of ${linked_o}: "
  size $linked_o | awk 'FNR == 2 {print $1}'
  echo -n "Size of ${linked_out}: "
  size ${linked_out} | awk 'FNR == 2 {print $1}'
  echo -n "Size of ${linked_opt_o}: "
  size $linked_opt_o | awk 'FNR == 2 {print $1}'
  echo -n "Size of ${linked_opt_out}: "
  size ${linked_opt_out} | awk 'FNR == 2 {print $1}'

##########################################
  cd $curDir
}

. shrc
# Get arguments
llvm_path=$1
flags=$2
pass_path=$3
opt_flags=$4
# Replace every space in flags with _
flags_underscored=${flags// /_}
# Copy the configuration file
cp "../myexpcfg.cfg" "./config/${flags_underscored}.cfg"
cp "../myexpcfg.cfg" "./config/${flags_underscored}cpp14.cfg"
cp "../myexpcfg.cfg" "./config/${flags_underscored}cpp03.cfg"


sed -i "s|XXX|${llvm_path}|g; s|YYY|${flags} -S -emit-llvm|g; s|ZZZ|${flags} -S -emit-llvm|g" ./config/"${flags_underscored}".cfg
sed -i "s|XXX|${llvm_path}|g; s|YYY|${flags} -S -emit-llvm|g; s|ZZZ|-std=c++14 ${flags} -S -emit-llvm|g" ./config/"${flags_underscored}"cpp14.cfg
sed -i "s|XXX|${llvm_path}|g; s|YYY|${flags} -S -emit-llvm|g; s|ZZZ|-std=c++03 ${flags} -S -emit-llvm|g" ./config/"${flags_underscored}"cpp03.cfg

# Iterate over each argument provided to the script

shift 4
for arg in "$@"; do
  echo "Processing $arg"
  process_argument "$arg"
done

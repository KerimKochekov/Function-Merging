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

  DEST="$curDir/../${flags_underscored}/$arg/exe_${llvm_path////_}"
  mkdir -p $DEST
  rm $DEST/*
  cp -r benchspec/CPU/$arg/exe/* $DEST
  
  echo -n "Size of $arg built with ${llvm_path}: " >> res.txt
  size $DEST/* | awk 'FNR == 2 {print $1}' >> res.txt

  cd $curDir
}

. shrc
# Get the first two arguments
llvm_path=$1
flags=$2
# Replace every space in flags with _
flags_underscored=${flags// /_}
# Copy the configuration file
cp "../myexpcfg.cfg" "./config/${flags_underscored}.cfg"
cp "../myexpcfg.cfg" "./config/${flags_underscored}cpp14.cfg"
cp "../myexpcfg.cfg" "./config/${flags_underscored}cpp03.cfg"


sed -i "s|XXX|${llvm_path}|g; s|YYY|${flags}|g; s|ZZZ|${flags}|g" ./config/"${flags_underscored}".cfg
sed -i "s|XXX|${llvm_path}|g; s|YYY|${flags}|g; s|ZZZ|-std=c++14 ${flags}|g" ./config/"${flags_underscored}"cpp14.cfg
sed -i "s|XXX|${llvm_path}|g; s|YYY|${flags}|g; s|ZZZ|-std=c++03 ${flags}|g" ./config/"${flags_underscored}"cpp03.cfg

# Iterate over each argument provided to the script

shift 2
for arg in "$@"; do
  echo "Processing $arg"
  process_argument "$arg"
done

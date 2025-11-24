#!/bin/bash

# List of input files
files=(
  basic.ll
  branch.ll
  branch2.ll
  loop.ll
  minimize_select.ll
  multiple_operand_switch.ll
  select_split_inst_result.ll
  simple_msa.ll
  small3.ll
  swap_merge.ll
  switch.ll
  test.ll
  test2.ll
)

# Iterate over each file and run opt-11
for file in "${files[@]}"; do
  echo "Processing $file ..."
  opt-11 --enable-new-pm=false -load build/lib/LLVMFM.so -lcs-fm -S "samples/$file" -o "samples/out_$file"
done

echo "✅ All files processed. Output written as samples/out_*.ll"


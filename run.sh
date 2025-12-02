#!/bin/bash

zero_time=$(date +%s%N)

bold_echo() {
  echo -e "\033[1m$1\033[0m"
}

compile_and_measure() {
  local file=$1
  local filename=$2
  local outDir=$3
  # local options=$4

  if [[ ${filename} == "-" ]]; then
    filename=$(basename ${file})
    filename="${filename%.*}"
  fi


  local Sz="-"
  local outFile="${outDir}/${filename}.o"

  #Note: add "-Rpass=inline" to see inlining decisions
  set -x
  # $CLANG -std=gnu89 -x ir ${file} -Os -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -o ${outFile} -c -lm
  $CLANGPP -std=gnu++98 -x ir ${file} -Os -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -o ${outFile} -c -lstdc++ -lm
  { set +x; } 2>/dev/null
  if [[ ${mode} == "linked" ]]; then
    local linkedFile="${outDir}/${filename}.out"
    set -x
    $CLANGPP -z muldefs ${outFile} -lm -o ${linkedFile}
    { set +x; } 2>/dev/null
    outFile2=${linkedFile}
  fi
  strip -d ${outFile}
  Sz=$(size ${outFile} | awk 'FNR == 2 {print $1}')
  strip -d ${outFile2}
  Sz2=$(size ${outFile2} | awk 'FNR == 2 {print $1}')
  echo $Sz, $Sz2
}


export linkFlags
export optLevel
export -f bold_echo
export -f compile_and_measure

mode=$1
format=$2
# Remove all '-' characters from inputFolder
inputFolder="input-${format}"

explore=1

if [ "$mode" != "units" ] && [ "$mode" != "linked" ]; then
  echo "first argument must be either 'units' or 'linked'."
  exit 1
fi

outputPath="./results/${mode}_$(date +%Y%m%d_%H%M%S)"
mkdir -p "${outputPath}"


for arg in "${@:3}"; do

  bold_echo "\e[3m===Processing benchmark: ${arg}===\e[0m"
  inputPath="./${inputFolder}/${arg}"

  # Check if the directory exists
  if [ ! -d "${inputPath}" ]; then
    echo "Directory ${inputPath} does not exist."
    continue
  fi

  # only works for linked mode

  inputFile="${inputPath}/_main_._all_._files_._linked_.${format}"

  echo "Input file: ${inputFile}"

  $OPT -mergereturn ${inputFile} -o ${outputPath}/_main_._all_._files_._linked_.${format}

  inputFileMergedRets=${outputPath}/_main_._all_._files_._linked_.${format}


  echo "Input file after merging rets: ${inputFileMergedRets}"



  # t0=$(date +%s%N)
  # baseSz=$(compile_and_measure ${inputFile} "-" ${outputPath})
  # t1=$(date +%s%N)
  # len=$((t1 - t0))
  # timeLlvm=$((len / 1000000))


  t0=$(date +%s%N)
  ourOutLLorBC=${outputPath}/${arg}1.${format}
  set -x
  # FMSA with Branch Reordering
  # $OPT -mergefunc -func-merging-branch-reord -func-merging-branch-reord-whole-program=true -func-merging-branch-reord-explore=${explore} -func-merging-branch-reord-similarity-pruning=false -mem2reg ${inputFileMergedRets} -o ${ourOutLLorBC}

  # SalSSA with Branch Reordering
  $OPT -mergefunc -func-merging-branch-reord -func-merging-branch-reord-salssa=true -func-merging-branch-reord-whole-program=true -func-merging-branch-reord-explore=${explore} -func-merging-branch-reord-similarity-pruning=false ${inputFileMergedRets} -o ${ourOutLLorBC}
  { set +x; } 2>/dev/null
  ourSz=$(compile_and_measure ${ourOutLLorBC} "-" "${outputPath}")
  t1=$(date +%s%N)
  len=$((t1 - t0))
  timeOur=$((len / 1000000))


  t0=$(date +%s%N)
  SalSSAOutLLorBC=${outputPath}/${arg}2.${format}
  set -x
  # FMSA
  # $OPT -mergefunc -func-merging -func-merging-whole-program=true -func-merging-explore=${explore} -func-merging-similarity-pruning=false -mem2reg ${inputFileMergedRets} -o ${SalSSAOutLLorBC}

  # SalSSA
  $OPT -mergefunc -func-merging -func-merging-salssa=true -func-merging-whole-program=true -func-merging-explore=${explore} -func-merging-similarity-pruning=false ${inputFileMergedRets} -o ${SalSSAOutLLorBC}
  { set +x; } 2>/dev/null
  SalSSASz=$(compile_and_measure ${SalSSAOutLLorBC} "-" "${outputPath}")
  t1=$(date +%s%N)
  len=$((t1 - t0))
  timeSalSSA=$((len / 1000000))


  echo "baseSz: ${baseSz}; ourSz: ${ourSz}; SalSSASz: ${SalSSASz}, ratio: $(echo "scale=5; ${ourSz}/${SalSSASz}" | bc -l)"
  echo "timeLlvm: ${timeLlvm}ms; timeOur: ${timeOur}ms; timeSalSSA: ${timeSalSSA}ms"


done
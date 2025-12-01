#!/bin/bash

zero_time=$(date +%s%N)

bold_echo() {
  echo -e "\033[1m$1\033[0m"
}

compile_and_measure() {
  local file=$1
  local filename=$2
  local outDir=$3
  local options=$4

  if [[ ${filename} == "-" ]]; then
    filename=$(basename ${file})
    filename="${filename%.*}"
  fi


  local Sz="-"
  local outFile="${outDir}/${filename}.o"

  #Note: add "-Rpass=inline" to see inlining decisions
  set -x
  $CLANG -Wno-unused-command-line-argument -c ${options} ${optLevel} ${linkingFlags} ${file} -o ${outFile}
  { set +x; } 2>/dev/null
  if [[ ${mode} == "linked" ]]; then
    local linkedFile="${outDir}/${filename}.out"
    set -x
    $CLANGPP -z muldefs ${outFile} -lm -o ${linkedFile}
    { set +x; } 2>/dev/null
    outFile=${linkedFile}
  fi
  strip -d ${outFile}
  Sz=$(size ${outFile} | awk 'FNR == 2 {print $1}')
  echo $Sz
}

./config_build_pass.sh "debug"

PASS_DIR="./function-merging-branch-reord/build/libFunctionMergingBranchReord.so"

export linkFlags
export optLevel
export -f bold_echo
export -f compile_and_measure

mode=$1
inputFolder=$2
format=$3
# Remove all '-' characters from inputFolder
inputFolder="${inputFolder//-/}"
inputFolder="${inputFolder}-${format}"

if [ "$mode" != "units" ] && [ "$mode" != "linked" ]; then
  echo "first argument must be either 'units' or 'linked'."
  exit 1
fi

outputPath="./results/${mode}_$(date +%Y%m%d_%H%M%S)"
mkdir -p "${outputPath}"


for arg in "${@:4}"; do

  bold_echo "\e[3m===Processing benchmark: ${arg}===\e[0m"
  inputPath="./${inputFolder}/${arg}"

  # Check if the directory exists
  if [ ! -d "${inputPath}" ]; then
    echo "Directory ${inputPath} does not exist."
    continue
  fi

  inputPath="${inputPath}/${mode}"

  inputFile=${inputPath}/${arg}.${format}

  echo "Input file: ${inputFile}"



  t0=$(date +%s%N)
  baseSz=$(compile_and_measure ${inputFile} "-" ${outputPath} "-O0")
  t1=$(date +%s%N)
  len=$((t1 - t0))
  timeLlvm=$((len / 1000000))


  t0=$(date +%s%N)
  ourOutLLorBC=${outputPath}/${arg}1.${format}
  set -x
  $OPT -load $PASS_DIR -function-merging-branch-reord  ${inputFile} -o ${ourOutLLorBC}
  { set +x; } 2>/dev/null
  ourSz=$(compile_and_measure ${ourOutLLorBC} "-" "${outputPath}" "-O0")
  t1=$(date +%s%N)
  len=$((t1 - t0))
  timeOur=$((len / 1000000))


  t0=$(date +%s%N)
  SalSSAOutLLorBC=${outputPath}/${arg}2.${format}
  set -x
  $OPT -func-merging  ${inputFile} -o ${SalSSAOutLLorBC}
  { set +x; } 2>/dev/null
  SalSSASz=$(compile_and_measure ${SalSSAOutLLorBC} "-" "${outputPath}" "-O0")
  t1=$(date +%s%N)
  len=$((t1 - t0))
  timeSalSSA=$((len / 1000000))


  echo "baseSz: ${baseSz}; ourSz: ${ourSz}; SalSSASz: ${SalSSASz}, ratio: $(echo "scale=5; ${ourSz}/${SalSSASz}" | bc -l)"
  echo "timeLlvm: ${timeLlvm}ms; timeOur: ${timeOur}ms; timeSalSSA: ${timeSalSSA}ms"


done
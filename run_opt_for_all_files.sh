#!/bin/bash

set -u

# Usage: ./script.sh <directory> [jobs]
if [ -z "${1:-}" ]; then
  echo "Usage: $0 <directory> [jobs]"
  exit 1
fi

TARGET_BASE="$1"
TARGET_DIR="$TARGET_BASE/units"
JOBS="${2:-4}"   # default: 4 parallel files

if [ ! -d "$TARGET_DIR" ]; then
  echo "Directory $TARGET_DIR does not exist!"
  exit 1
fi

mkdir -p "$TARGET_BASE/out"

run_file() {
  local file="$1"
  echo "Starting: $(basename "$file")"

  $OPT -mergefunc -func-merging-branch-reord \
       -func-merging-branch-reord-salssa=true \
       -func-merging-branch-reord-whole-program=true \
       -func-merging-branch-reord-explore=10 \
       -func-merging-branch-reord-similarity-pruning=false \
       "$file"

  local status=$?
  if [ $status -eq 0 ]; then
    echo "Done: $(basename "$file")"
  else
    echo "Failed ($status): $(basename "$file")"
  fi
  return $status
}

export -f run_file
export OPT

running=0
total_files=0

for file in "$TARGET_DIR"/*; do
  [ -f "$file" ] || continue
  ((total_files++))
done

echo "Found $total_files files. Running up to $JOBS in parallel."

for file in "$TARGET_DIR"/*; do
  [ -f "$file" ] || continue

  run_file "$file" &
  ((running++))

  if [ "$running" -ge "$JOBS" ]; then
    wait -n
    ((running--))
  fi
done

wait

bash merge_files.sh "$TARGET_BASE"

echo "Processing completed for all files in $TARGET_DIR."
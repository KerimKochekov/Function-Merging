#!/bin/bash

ROOT_DIR="/workspace/bench/"
OUT_DIR="./out"

CMD_PREFIX="opt-11 --enable-new-pm=false -load $LCS_PATH -lcs-fm -S"

# Create the top-level output directory if it doesn't exist
mkdir -p "$OUT_DIR"

for dir in "$ROOT_DIR"/*; do
    if [ -d "$dir" ]; then
        units_dir="$dir/units"
        subdir_name=$(basename "$dir")

        mkdir -p "$OUT_DIR/$subdir_name"
        
        echo "Processing directory: $subdir_name"

        part2_out_file="$OUT_DIR/$subdir_name/part2.txt"
        part3_out_file="$OUT_DIR/$subdir_name/part3.txt"
        > "$part2_out_file"
        > "$part3_out_file"

        total=$(find "$units_dir" -maxdepth 1 -type f -name "*.ll" | wc -l)
        [ "$total" -eq 0 ] && { echo "No .ll files found."; continue; }
        count=0

        for llfile in "$units_dir"/*.ll; do
                if [ -f "$llfile" ]; then
                    ((count++))

                    # Compute progress (integer percentage)
                    percent=$(( count * 100 / total ))

                    # Draw a 50-character progress bar
                    bar_size=50
                    filled=$(( percent * bar_size / 100 ))
                    bar=$(printf "%${filled}s" | tr ' ' '#')
                    spaces=$(( bar_size - filled ))
                    empty=$(printf "%${spaces}s")

                    # Print progress bar dynamically (overwrite same line)
                    printf "\r[%s%s] %3d%% (%d/%d)" "$bar" "$empty" "$percent" "$count" "$total"

                    # echo $CMD_PREFIX "$llfile"
                    printf "%s\n" "$(basename "$llfile")" >> $part2_out_file
                    
                    # /usr/bin/time -f "%e" -o "$part2_out_file" -a \
                    #     $CMD_PREFIX -lcs-run-salssa 0 -lcs-run-dp 0 "$llfile" -o xxx >> /dev/null 2>&1
                    # /usr/bin/time -f "%e" -o "$part2_out_file" -a \
                    #     $CMD_PREFIX -lcs-run-salssa 1 -lcs-run-dp 0 "$llfile" -o xxx >> /dev/null 2>&1
                    # /usr/bin/time -f "%e" -o "$part2_out_file" -a \
                    #     $CMD_PREFIX -lcs-run-salssa 1 -lcs-run-dp 1 "$llfile" -o xxx >> $part2_out_file
                    $CMD_PREFIX -lcs-run-salssa 1 -lcs-run-dp 1 "$llfile" -o xxx >> "$part2_out_file" 2>&1
                    printf "\n" >> $part2_out_file
                  
                fi
            done 
        exit 0
    fi
done
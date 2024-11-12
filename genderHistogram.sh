#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <input_csv_file>"
    exit 1
fi

input_file="$1"
awk -F',' '$NF==1 {print $2}' "$input_file" | sort | uniq -c > data1.dat
echo "Data processed and saved to data1.dat"


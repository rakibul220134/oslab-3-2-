#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 filename"
fi

file=$1
while true
do
    if [ ! -e "$file" ]; then
        msg="$(date): ERROR - File not found"
        echo "$msg" >&2.
        echo "$msg" >> error.log
    else
        echo "File is safe"
    fi
    sleep 5
done

# -------- Sample Input / Output --------
# Command:
# ./monitor.sh test.txt
#
# Output (if file missing):
# Sun Jan 26 11:30: ERROR - File not found
#
# Output (if file exists):
# File is safe

#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Error: No filename provided"
    exit 1
fi
path=$1
#file readable or writable
if [ -f "$path" ]; then
    if [ -w "$path" ]; then
        echo "File exists and is writable"
    else
        echo "File exists but is read-only"
    fi
 #directory identify
elif [ -d "$path" ]; then
    echo "This is a directory"
else
    echo "Path does not exist"
fi


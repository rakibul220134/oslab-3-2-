#!/bin/bash
mkdir rakib && echo "directory created"
mkdir rakib ||echo "directory already exists"
echo "rakib"; echo "sharker"
if [ $1 -gt 10 ]; then
echo "greater than 10"
elif [ $1 -eq 10 ]; then
echo "equal"
else
echo "less"
fi
name="rakib"
if [ "$name" == "rakib" ]; then
    echo "hello"
fi
if [ -z "$name" ]; then
echo "true not empt sting"
else
echo "false"
fi
if [ -a "r.txt" ]; then
echo "file exists"
else
echo "not exist"
fi
if [ -x a.sh]; then
echo "executable"
fi



#! /bin/bash
name="sharker"
echo "string size:${#name}"
echo "first three character:${name:0:3}"
echo "rakib, ${name}rs"
echo "script name : $0"
echo "first argument :$1"
echo "second argument :$2"
echo "third argument :$3"
echo "total argument :$#"
echo "PID :$$"
echo "exit status of the last command: $?"
echo "all args :$@"

#./variable.sh RAKIB 101 #input


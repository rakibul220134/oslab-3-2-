#!/bin/bash

for x in a b c
do
echo $x
done

for i in {1..5};do
echo  "$i"
done
for (( i=1;i<=5;i++)); do
 echo "$i"
done

filename="r.txt"
IFS= 
while read -r line
 do
  echo "Line: $line"
done < "$filename"

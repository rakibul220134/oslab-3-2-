#!/bin/bash

echo "Enter marks for Subject 1:"
read m1
echo "Enter marks for Subject 2:"
read m2
echo "Enter marks for Subject 3:"
read m3

avg=$(echo "($m1 + $m2 + $m3) / 3" | bc)  # bc -l dile floating value dekhaito r bc dile just integer value

echo "Average: $avg"

if (( $(echo "$avg >= 80" | bc -l) )); then
    echo "Grade: A+"
elif (( $(echo "$avg >= 60" | bc -l) )); then
    echo "Grade: B"
else
    echo "Grade: Fail"
fi


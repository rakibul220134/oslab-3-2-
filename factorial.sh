#!/bin/bash

echo "Enter a number:"
read num

if [ "$num" -lt 0 ]; then
    echo "Error: Negative number"
fi
fact=1
for (( i=1; i<=num; i++ ));do
    fact=$((fact * i))
done
echo "Factorial of $num is $fact"

# -------- Sample Input / Output --------
# Input:
# Enter a number: 5
# Output:
# Factorial of 5 is 120

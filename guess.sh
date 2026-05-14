#!/bin/bash

secret=$(( RANDOM % 20 + 1 ))
attempts=0

while true ;
do
    echo "Guess a number between 1 and 20:"
    read guess
    attempts=$((attempts + 1))

    if [ "$guess" -gt "$secret" ]; then
        echo "Too high!"
    elif [ "$guess" -lt "$secret" ]; then
        echo "Too low!"
    else
        echo "Success!"
        echo "Attempts taken: $attempts"
        break
    fi
done

# -------- Sample Input / Output --------
# Guess a number between 1 and 20: 10
# Too low!
# Guess a number between 1 and 20: 15
# Too high!
# Guess a number between 1 and 20: 13
# Success!
# Attempts taken: 3


#!/bin/bash

FILE="todo.txt"

touch "$FILE"

case "$1" in
    add)
        echo "[ ] $2" >> "$FILE"
        ;;
        
    list)
        awk '{print NR". "$0}' "$FILE"
        ;;
        
    done)
        sed -i "${2}s/\[ \]/\[x\]/" "$FILE"
        echo "Nice job!"
        ;;
        
    clear)
        > "$FILE"
        echo "Todo list cleared."
        ;;
        
    search)
        grep -i "$2" "$FILE"
        ;;
        
    *)
        echo "Usage: ./todo.sh {add|list|done|clear|search} [task_name/number/keyword]"
        ;;
esac

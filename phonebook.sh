#!/bin/bash

file="contacts.txt"
touch "$file"

add_contact() {
    echo "Enter Name:"
    read name
    echo "Enter Number:"
    read number
    echo "$name : $number" >> "$file"
    echo "Contact added."
}

search_contact() {
    echo "Enter name to search:"
    read name
    grep -i "$name" "$file"
}

show_all() {
    cat "$file"
}

while true
do
    echo "1. Add Contact"
    echo "2. Search Contact"
    echo "3. Show All"
    echo "4. Quit"
    read choice

    case $choice in
        1) add_contact ;;
        2) search_contact ;;
        3) show_all ;;
        4) exit ;;
        *) echo "Invalid option" ;;
    esac
done

# -------- Sample Input / Output --------
# Choice: 1
# Enter Name: Ali
# Enter Number: 017xxxxxxx
# Contact added.
#
# Choice: 3
# Output:
# Ali : 017xxxxxxx


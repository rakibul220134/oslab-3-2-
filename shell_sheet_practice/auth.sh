#!/bin/bash

read -p "enter user name:" username

read -s -p "Enter password: " password
echo " " 

if grep -q "^$username $password$" userdata.txt; then
    echo "Welcome, $username!"
else
    echo "Error: Invalid username or password.">>&2

fi

#!/bin/bash

# ১. ইউজারনেম ইনপুট নেওয়া
read -p "enter user name:" username

# ২. পাসওয়ার্ড ইনপুট নেওয়া (হাইড করা অবস্থায়)
read -s -p "Enter password: " password
echo " " # পাসওয়ার্ড দেওয়ার পর নতুন লাইনে যাওয়ার জন্য

# ৩ ও ৪. userdata.txt ফাইলে মিলিয়ে দেখা
# grep -q দিয়ে আমরা চেক করছি এই ইউজারনেম ও পাসওয়ার্ডের কোনো লাইন ফাইলে আছে কি না
if grep -q "^$username $password$" userdata.txt; then
    echo "Welcome, $username!"
else
    # ৫. না মিললে Error মেসেজ দেখানো (stderr হিসেবে)
    echo "Error: Invalid username or password.">>&2

fi

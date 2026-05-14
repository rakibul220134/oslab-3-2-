#!/bin/bash

FILE="todo.txt"

# স্ক্রিপ্ট রান করলে আগে চেক করবে ফাইলটি আছে কি না, না থাকলে তৈরি করবে
touch "$FILE"

# $1 হলো ইউজারের দেওয়া প্রথম কমান্ড (যেমন: add, list, done)
case "$1" in
    add)
        # $2 হলো টাস্কের নাম। এটি ফাইলে append করবে
        echo "[ ] $2" >> "$FILE"
        ;;
        
    list)
        # awk কমান্ড দিয়ে ফাইলের প্রতিটি লাইনের আগে নাম্বার (1. 2.) বসিয়ে প্রিন্ট করবে
        awk '{print NR". "$0}' "$FILE"
        ;;
        
    done)
        # sed কমান্ড ব্যবহার করে নির্দিষ্ট লাইনের (যেমন $2 বা 2 নম্বর লাইন) "[ ]" কে "[x]" দিয়ে রিপ্লেস করবে
        sed -i "${2}s/\[ \]/\[x\]/" "$FILE"
        echo "Nice job!"
        ;;
        
    clear)
        # ফাইলটি সম্পূর্ণ খালি করে দিবে
        > "$FILE"
        echo "Todo list cleared."
        ;;
        
    search)
        # grep দিয়ে ফাইলের ভেতর কিওয়ার্ড খুঁজবে (case-insensitive করার জন্য -i ব্যবহার করা হয়েছে)
        grep -i "$2" "$FILE"
        ;;
        
    *)
        # ভুল কমান্ড দিলে ব্যবহারবিধি জানিয়ে দিবে
        echo "Usage: ./todo.sh {add|list|done|clear|search} [task_name/number/keyword]"
        ;;
esac

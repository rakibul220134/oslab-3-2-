#! /bin/bash
a=5; b=4
echo "static sum: $((a+b))"
echo $a
echo "3.5 + 2.2" | bc -l    #FOR FLOATING NUMBER
sum=$(echo "3.5 + 2.2" | bc -l)
echo "floating sum: $sum" 
a=5.5; b=4.6
sum=$(echo "$a + $b" | bc -l)
echo "floating_sum: $sum" 
echo "scale=5; 10/3" | bc -l  #basic calculator library(math)
#input niye sum kora from user
echo "enter number 1"
read num1
echo "enter number 2"
read num2
sum=$((num1+num2))
echo "sum is : $sum"
echo "enter your name:"
read name
echo "$name"

#./inoutputsum.sh

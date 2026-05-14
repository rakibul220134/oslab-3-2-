#! /bin/bash
echo "rakib"
name=rakib
echo  sumu
echo $name
echo $0, $1 ,$#,$@,$?,$$
a=3; b=4
echo "$((a+b))"
echo ${#name}
echo  ${name:3:0}
echo  ${name:0:5}
echo  ${name:0:0}
echo  ${name:3:3}
result=$(echo  "4.3-4.2" |bc -l)
echo $result
a=4.3 b=4.2
result=$(echo "scale=3; $a/$b" |bc -l)
echo $result
printf "Name: %s,age: %d\n" "rakib"25
read a
echo $a
read -p "enter your age:" age
echo $age
read -s password
echo  "password entered"
var=$(date)
echo $var

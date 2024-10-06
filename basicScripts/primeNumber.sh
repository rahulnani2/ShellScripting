#!/bin/bash
# Program to check if a given number is prime or not 
read -p "Enter a Number to check : " number
if [ -z $number ]; then
    echo "Usage : Enter the Number"
    exit 1
fi 
i=2
#flag variable 
flag=0

#running loop from 2 to number/2 
while test $i -le `expr $number / 2`
do
  if test `expr $number % $i` -eq 0 
  then
    flag=1;
  fi
 # increment loop variable 
  i=`expr $i + 1`
done

if test $flag -eq 1
then 
  echo "Entered Number $number is not a PRIME Number"
else
  echo "Entered Number $number is PRIME Number"
fi  
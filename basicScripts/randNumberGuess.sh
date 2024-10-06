#!/bin/bash
# This script generates Random number between 1 and 100 and prompt users to guess the number, 
# provding hints if the guess is too high or low

#Generate a Random Number 
random=$(( RANDOM % 100 + 1 ))
echo "Random Number : $random"
guessNumber=0

while [ -z "$guessNumber" ] || [ $random -ne $guessNumber ]
do 

 read -p "Enter the number to Guess from 1-100 : " guessNumber

 if [[ -z "$guessNumber" ]]; then 
    echo " Usage: Number cannot be Empty ! "
   # exit 1

 elif [[ $guessNumber -lt $random ]]; then 
     echo "Number is too low"

 elif [[ $guessNumber -gt $random ]]; then
     echo "Number is too high"

 elif [[ $guessNumber -eq $random ]] then 
     echo "Congratualtions ! You have guessed the Number Correctly"    
 fi
done
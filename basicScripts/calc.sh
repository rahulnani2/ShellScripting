#!/bin/bash
# Basic Calculator programm which performs basic arithmentic operations 
echo "Usage : Valid Calculator Operations 
      Enter Two numbers and Choice of your arithmetic operation
      Addition - Enter "+" 
      Subtraction - Enter "-" 
      Multiplication - Enter "*" 
      Division - Enter "/" "


read -p "Enter the first Number : " num1
read -p "Enter the Second Number : " num2
read -p "Enter the Operation : "  ops



case "$ops" in 
     "+") 
          result=$(($num1 + $num2)) 
          echo "Addition = $result "
          ;;
     "-") 
          result=$(($num1 - $num2)) 
          echo "Subtraction = $result "
          ;;
     "*") 
          result=$(($num1 * $num2)) 
          echo "multiplication = $result "
          ;;
     "/") 
          result=$(($num1 / $num2)) 
          echo "Division = $result "
          ;;
      *)
         echo "Usage : Enter Valid Operation"
          ;;
     esac         
           
          
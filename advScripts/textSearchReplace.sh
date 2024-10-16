#!/bin/bash 
# Text Search and Replace : Create a script that finds and replace a specific word in a given file. 
# The user should provide the file name, the word to be replaced and the new word

read -p "Enter the file name to be parsed : " file_Name
read -p "Enter the word/text to be searched : " word
read -p "Enter the new word/text to be replaced : "  replace

if [ -z "$file_Name" ] && [ -z "$word" ]; then 
    echo "Usage : Enter the correct info" 
    exit 1 
fi

if [ ! -f "$file_Name" ]; then 
    echo "File Not found !"
    exit 1
fi 

sed -i "s/$word/$replace/g"  "$file_Name"

if [ $? -eq 0 ]; then 
   echo "Replacement is successful"
else
   echo "Operation Failed"
fi 
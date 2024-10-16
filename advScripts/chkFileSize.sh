#!/bin/bash
# File Operations with Conditions: Write a script that takes a directory name as an argument.
# It should count how many files in that directory are larger than 100KB and output the result.

read -p "Enter the Directory Name to validate : " args 

if [ -z "${args}" ]; then 
  echo "Usage: Enter the direcotyr Name " 
  exit 1
fi

if [ ! -d "${args}" ]; then 
   echo "Directory Not found, Enter a valid directory"
   exit 1
fi 

file_count=$(find "$args" -type f -size +100k | wc -l )
echo "No of files larger than 100K in $args : $file_count"

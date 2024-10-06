#!/bin/bash
# Program to list all files in current directory and Save it to a file
read -p "Enter the absolute path to save the list of files : " filePath

if [ -z "$filePath" ]; then 
    echo "Usage : Enter the file Path "
    exit 1 
fi 

ls $filePath > /tmp/fileList.txt

echo "Files list saved in temp as fileList.txt"
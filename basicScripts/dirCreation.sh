#!/bin/bash
# Write a script to check if the directory exists. Create a Dir if not exists
# -d $"DirName" checks if the directory is present or no
read " Enter a directory Name : " dirName
# check if the input is entered or not
if [ -z "$dirName" ]; then
   echo "Usage : Enter the Directory Name"
   exit 1
fi

if [ ! -d "$dirName" ]; then
   echo "Directory Not Found ! Creating Directory "
   mkdir $dirName
   exit 0 
fi
echo "Directory found No Action required"
 


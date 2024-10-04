#!/bin/bash 
# Notes frm the script
# This "Create a script that takes a filename as an argument and makes a backup of that file by copying it to a new file with a timestamp."
# Check if file name is argument is provided. If filename is not provided exit the script 
# -z ${fileName} -> Returns true If variable is unset or set to Empty String. 
# "$#"" Value of the total number of command line arguments passed
# "$1" is The first command line argument passed, $2 is second command line
#  -f $filename checks if the file is present and is a regular file

read -p "Enter the filename to backup : " fileName

# Check if file name is argument is provided. If filename is not provided exit the script 

if [ -z "${fileName}" ]; then 
    echo "Usage: File Name is Empty"
    exit 1 
fi 

#check the file exists 
if [ ! -f "$fileName" ]; then
 echo "File not found"
 exit 1  
fi

# Create a TimeStamp 
timeStamp=$(date +"%Y%m%d%H%M%S")

#Create the backup file name 
backupFileName="${filename}_backup_${timeStamp}"

# Copy the file to backup location 
cp "$fileName"  /tmp/"$backupFileName"

echo " $FileName is backed up to temp Dir as $backupFileName"

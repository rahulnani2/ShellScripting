#!/bin/bash
# Log File Parser : Create a script that process a log file eg:/var/log/syslog
# Extract lines containing a specific keyword passed as an argument and writes them to new file

read -p "Enter the log file to be parsed  : " fileName
read -p "Enter the keyword to search : " keyWord

if [ -z "$fileName" ] && [-z "$keyWord"]; then 
   echo "Usage: Enter filename and keyword"
   exit 1
fi

newFile=$(echo $fileName | rev | cut -d '/' -f 1 | rev)
echo "newFile : $newFile"
echo "Created a log file to copy the parsed logs " 
grep $keyWord $fileName > /tmp/log_$newFile
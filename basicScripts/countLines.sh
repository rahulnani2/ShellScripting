#!/bin/bash
#Programm to count number of lines and words in a input file 
# "wc [option] [input-file]"
# wc stands for words count . Using ec we can count number of lines and words in a file 
read -p "Enter the absolute path of the file to read " filePath
if [ -z $filePath ]; then 
   echo "Usage : Enter the file Path"
   exit 1
fi

if [ ! -f $filePath ]; then
   echo "File Not found"
   exit 1 
fi

numberOfLines=`wc --lines < $filePath`
numberOfWords=`wc --words < $filePath`
echo "Number of lines in file $filePath : $numberOfLines"
echo "Number of words in file $filePath : $numberOfWords"
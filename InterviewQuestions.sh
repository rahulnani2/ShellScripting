#!/bin/bash

#############################################
# Author : "Rahul Dondeti"
# Date : 03-11-2024

# This file contain commonly asked shell scripting interview questions

# Version : v1 
#############################################


# Question 1 - List some of the commonly used Shell commands 
ls # listing the files 
find # to find the files in the machine 
df # to check the disk space 
free # to check the free memory 

# Question 2 - Write  a simple shell script to list all the process 
ps -ef # to list all the processes
ps -ef | awk -F " " '{$2}'  # To print only the process ids of all processes


# Question 3 - Write a script to print only erros from a remote log 
curl  "https://<url>" | grep error  # to print the errors from a remote file 
wget "https://<url>" # to download the file from remote location 


# Question 4 - Write a scipt to print numbers divided by 3 & 5 and not 15

i=1
for i in {1..100); do 
   
    if [ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]  && [ ` expr $i % 15` != 0  ]; then 

     echo "Divides by 3 and 5 but not 15 " , $i
    
    fi;

done     

# Question 5 - Write a script to print number of "S" in mississippi
 
 #Declare a variable mississippi 
 x="mississippi"
 # grep -o is to fetch the letter 
 # We are providing standard input as $x to grep -o command 
 # wc -l is to count the nu
 grep -o 's' <<< "$x" | wc -l 

# Question 6 - How will you debug the shell script 
set -x

# Question 7 - uWhat is crontab in lInux ?  Can you provide an example of usage ?

# Question 8- How to open a file in read-only mode ?
vim -r <file_name>
chmod 400 <filename>

# Question 9 - What is the difference between soft and hard link ?
# Hard link - It creates a copy and independent from original file
# Soft link - A shortcut file 

# Question 10 - What is the difference between break and continue statements 
# Break - Ends the execution of loop and comes out of the loop 
# Continue - Skips the steps followed by "continue" in loop 

# Question 11 - What are some disadvantages of shell scripting ?
# Errors are frequent and costly and single error can alter the command
# The execution speed is slow
# Large complex tasks aren't well suited to it 
# It has minimal data structure 
# Everytime a shell command is executed a new command is launched 

# Question 12 - What are the different types of loops 

# Question 13 - Is bash dynamic or statically typed why 
# dynamically typed 

# Question 14 - Explain the network troubleshooting tools you have used 
 traceroute 

# Question 15 -  How will you sort list of names in a file 
  sort command 

# How will you manage logs of a system that generate huge log files everday ?
logrotate  




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

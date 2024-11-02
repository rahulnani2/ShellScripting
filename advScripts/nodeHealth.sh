#!bin/bash
#########################################
# Author: Rahul Dondeti
# Date : 01/11/2024
#
# This script outputs the node health 
#
# Version : v1 
##########################################

# Best Practices for writing Shell scripts
set -x # Sets all the following commands in Debug Mode
set -e # exits the script when there is an error with command
set -o pipefail  # set -e will not catch pipe | command failures, Hence writing set -o pipefail

df -h # Free Disk Space
free -g # Free memory in the node 
nproc # processors in the node 
# Traps the signal received by the program from the OS or the user and then executes the 
# specifc code provided by the programmer. It acts like a trigger in respose to a signal
# Below command echoes the output if a user tries to press Ctrl+C
trap "echo dont use ctrl+c " SIGINT
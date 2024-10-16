#!/bin/bash
# Disk Usage Monitor : Write a script that checks the disk usage of the system 
# If the disk usage goes aboce 90% send a warning message 
echo "Monitoring the Disk Usage of System "
threshold=90
df -H | awk '{print $5 " " $1}' | while read -r output ;
do 
 echo "$output"
 usePercent=$( echo $output | awk '{print $1}' | cut -d '%' -f 1 )
 partition=$( echo $output | awk '{print $2}')
 if [ $usePercent -ge $threshold ] ; then 
    echo "Running out of space  $partition ($usePercent%)" 
 fi
done
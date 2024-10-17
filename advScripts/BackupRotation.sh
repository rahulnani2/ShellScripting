#!/bin/bash
# Backup and Archive Rotation: Write a script that backsup a DIR into tar.gz file. 
# The script should also delete backups older than 7 days to save space

backup_source="/home/ec2-user/app"
backup_dest="/tmp"
date=$(date + "%Y-%m-%d")
backup_file="$backup_dest/backup-$date.tar.gz"
retention_days=7
# Create a backup 
echo "Creating backup : $backup_source"
tax -czf $backup_file $backup_source
#Verify if the backup is successful 
if [$? -eq 0 ]; then
  echo "Back up is successful!"
else 
  echo "Backup faile " >&2
  exit 1
fi

# Delete backups older thatn 7 Days 
echo "Deleting backups older than $retention_days"
find $backup_dest -type f -name "*.tar.gz" -mtime +$retention_days -exec rm {} \;

# Verify if old backups are deleted 
if [ $? -eq 0 ]; then
   echo "Backups older than $retention_days are deleted"
else 
  echo "Failed to delete old backups" >&2
fi

echo "Backup Process completed"
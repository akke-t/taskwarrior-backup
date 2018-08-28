#!/bin/bash

# Create an archive of the Taskwarrior $TASK_DIR
# Backups are kept in $TASK_BACKUP_DIR
cd $TASK_BACKUP_DIR && tar -czf task-backup-$(date +'%Y%m%d%H%M%S').tar.gz -C $TASK_DIR .

# E.g.:
#A. Backup with (substitute your own directories in the ones I list):
#cd "/mnt/c/Users/a/Documents/fun/taskwarrior/task backup/18-08-28 Github backup method/backup_dir" && tar -czf task-backup-$(date +'%Y%m%d%H%M%S').tar.gz -C "/home/a/.task" .
#B. Restore with: 
#tar -xf "/mnt/c/Users/a/Documents/fun/taskwarrior/task backup/18-08-28 Github backup method/backup_dir/task-backup-20180828194105.tar.gz" -C "/home/a/.task"

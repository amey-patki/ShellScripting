#!/bin/bash

# Source repository details
source_repo="https://github.com/iam-veeramalla/python-for-devops.git"
source_branch="main"

# Destination repository details (where you want to push the backup)
destination_repo="https://github.com/amey-patki/Backup_Repo.git"
backup_branch="backup-$(date +"%Y%m%d_%H%M%S")"

# Directory where the backup will be stored
backup_directory="/path/to/backup/directory"

# Log file for script output
log_file="/path/to/log/backup_log.txt"

# Move to the directory where the script is located
cd "$(dirname "$0")"

# Log start time
echo "Backup started at $(date +"%Y-%m-%d %H:%M:%S")" >> "$log_file"

# Clone the source repository
git clone --branch "$source_branch" "$source_repo" "$backup_directory"

# Create a new branch for the backup
cd "$backup_directory"
git checkout -b "$backup_branch"

# Push the backup to the destination repository
git remote add destination "$destination_repo"
git push destination "$backup_branch"

# Clean up temporary directory
cd ..
rm -rf "$backup_directory"

# Log end time
echo "Backup completed at $(date +"%Y-%m-%d %H:%M:%S")" >> "$log_file"

echo "Backup completed and pushed to the destination repository."


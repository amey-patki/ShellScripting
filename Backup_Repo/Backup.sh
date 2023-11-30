#!/bin/bash

# Source repository details
source_repo="https://github.com/iam-veeramalla/python-for-devops.git"
source_branch="main"

# Destination repository details (where you want to push the backup)
destination_repo="https://github.com/amey-patki/Backup_Repo.git"
backup_branch="backup-$(date +"%Y%m%d_%H%M%S")"

# Clone the source repository
git clone --branch "$source_branch" "$source_repo" temp_backup

# Create a new branch for the backup
cd temp_backup
git checkout -b "$backup_branch"

# Push the backup to the destination repository
git remote add destination "$destination_repo"
git push destination "$backup_branch"

# Clean up temporary directory
cd ..
rm -rf temp_backup

echo "Backup completed and pushed to the destination repository."

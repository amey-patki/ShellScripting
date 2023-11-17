#!/bin/bash

# Check if a directory path is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

# Assign the directory path to a variable
directory_path=$1

# Check if the directory exists
if [ ! -d "$directory_path" ]; then
    echo "Error: Directory '$directory_path' does not exist."
    exit 1
fi

# Count and list files in the directory
file_count=$(ls -1 "$directory_path" | wc -l)
file_names=$(ls -1 "$directory_path")

# Print the results
echo "Number of files in '$directory_path': $file_count"
echo "File names:"
echo "$file_names"

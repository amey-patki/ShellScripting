#!/bin/bash

# Define the directory where you want to start searching
search_directory="$HOME"


# Define the output file name
output_file="largest_files.txt"

# Use the find and du commands to find the largest files, sort them, and save the result to the output file
find "$search_directory" -type f -path "/proc" -prune -o -exec du -h {} + | sort -rh | head -n 10 > "$output_file"

echo "The 10 largest files have been saved to $output_file"

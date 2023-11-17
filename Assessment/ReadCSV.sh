#!/bin/bash

# Check if a filename is provided as a command line argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename.csv>"
    exit 1
fi

# Assign the filename to a variable
filename=$1

# Check if the file exists
if [ ! -f $filename ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

# Read and print the content of the CSV file
while read line; do
    echo $line
done < "$filename"

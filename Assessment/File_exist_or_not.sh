#!/bin/bash

# Check if a filename is provided as a command line argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Assign the filename to a variable
filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' does not exist."
    exit 1
fi

# If the file exists, print a message
echo "File '$filename' exists!"

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
    echo "Error: File '$filename' not found."
    exit 1
fi

# Search for the specific word in the file
search_word="training"
line_number=$(grep -n "$search_word" "$filename" | cut -d ":" -f 1)

# Check if the word is found
if [ -n "$line_number" ]; then
    echo "Word '$search_word' found on line $line_number."
else
    echo "Word '$search_word' not found in the file."
fi

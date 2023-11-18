#!/bin/bash

echo "Enter the pattern to search for:"
read pattern

echo "Enter the name of the file to search in:"
read filename

# Use double quotes around "$pattern" to handle patterns with spaces or special characters
grep "$pattern" "$filename"

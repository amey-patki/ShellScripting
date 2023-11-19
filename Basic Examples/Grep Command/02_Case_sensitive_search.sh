#!/bin/bash

echo "Enter the pattern for case-insensitive search"
read pattern

 echo "Enter the name of file to search"
 read filename

 grep -i "$pattern" "$filename"
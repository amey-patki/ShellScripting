#!/bin/bash

echo "Enter the pattern to search rescursively :"
read pattern

echo "Enter the directory name to search in :"
read directory

#search recuesively
grep -r "$pattern" "$directory"          

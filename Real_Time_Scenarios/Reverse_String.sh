#!/bin/bash

# Function to reverse a string
reverse_string() {
    local input_string="$1"
    local reversed_string=""
    
    for ((i=${#input_string}-1; i>=0; i--)); do
        reversed_string="${reversed_string}${input_string:$i:1}"
    done
    
    echo "$reversed_string"
}

# Example usage
echo "Enter a string to reverse:"
read input
reversed=$(reverse_string "$input")
echo "Reversed string: $reversed"

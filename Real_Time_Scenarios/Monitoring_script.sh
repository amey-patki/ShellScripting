#!/bin/bash

echo "Checking server health..."

# Set variables
server="example.com"
ping_threshold=50

# Check if 'ping' command is available
if command -v ping &> /dev/null; then
    # Ping the server and check response time
    ping_result=$(ping -c 5 "$server" | awk -F'/' 'END {print $5}')

    # Check if response time exceeds the threshold
    if [[ -n "$ping_result" && $(echo "$ping_result > $ping_threshold" | bc -l) -eq 1 ]]; then
        echo "Server is slow. Response time: $ping_result ms"
    else
        echo "Server is healthy. Response time: $ping_result ms"
    fi
else
    echo "Error: 'ping' command not found. Please install it to check server health."
fi

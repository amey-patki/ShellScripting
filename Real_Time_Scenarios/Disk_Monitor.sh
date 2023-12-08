#!/bin/bash

# Set the threshold for disk usage in percentage
threshold=90

# Get the current disk usage
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

# Check if disk usage exceeds the threshold
if [ "$disk_usage" -gt "$threshold" ]; then
    echo "Warning: Disk usage is high! Current usage: $disk_usage%"
   
fi

#!/bin/bash

echo "Analyzing server logs..."

# Set log file path
log_file="/var/log/nginx/access.log"

# Print the top 10 IP addresses with the most requests
awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr | head -n 10

echo "Log analysis completed."

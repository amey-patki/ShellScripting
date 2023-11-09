#!/bin/bash

# Output file
output_file="system_stats.txt"

# Get current date and time
current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

# Header for the table
header="Date Time | CPU Usage (%) | Memory Usage (%) | Disk Usage (%)"

# Get system stats
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
memory_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

# Format the output in a table
table_row="$current_datetime | $cpu_usage | $memory_usage | $disk_usage"

# Check if the output file exists, if not, create it and add the header
if [ ! -e $output_file ]; then
    echo $header > $output_file
fi

# Append the current stats to the file
echo $table_row >> $output_file

echo "System stats written to $output_file"

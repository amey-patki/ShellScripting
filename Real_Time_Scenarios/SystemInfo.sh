#!/bin/bash

# Create a system information report
report_file="system_report.txt"

echo "System Information Report" > "$report_file"
echo "--------------------------" >> "$report_file"
echo "Date: $(date)" >> "$report_file"
echo "" >> "$report_file"

# Gather system information
echo "Uptime: $(uptime)" >> "$report_file"
echo "Load Average: $(cat /proc/loadavg)" >> "$report_file"
echo "Memory Usage: $(free -h)" >> "$report_file"
echo "Disk Usage: $(df -h)" >> "$report_file"
echo "" >> "$report_file"

echo "System report generated. File: $report_file"

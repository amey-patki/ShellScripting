header="Date Time | CPU Usage (%) | Memory Usage (%) | Disk Usage (%)"

#echo "$header"

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
memory_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

table_row="$current_datetime | $cpu_usage | $memory_usage | $disk_usage"

echo "$table_row"
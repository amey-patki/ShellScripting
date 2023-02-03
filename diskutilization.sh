#!/bin/bash
echo "Check dis usage in linux system"
disk_usage=`df -h|grep "/dev/xvda1"|awk '{print $5}'|cut -d '%' -f 1`
echo "$disk_usage% of disk is filled"
if [ $disk_usage -gt 80 ];
then
        echo "disk is utilized more than 80%,expand dis or delete files soon"
else
        echo "enough disk is available"
fi

## If you want to store output in file

df -h|grep "/dev/xvda1"|awk '{print $5}' >> file1.txt

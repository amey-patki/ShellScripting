#!/bin/bash
echo "Below are the biggest 10 file in the file system via positional argument"
path=$1
echo $path
du -ah $path | sort -hr | head -n 5 > /home/ec2-user/file1.txt
echo "These are biggest files in file system $path"
cat /home/ec2-user/file1.txt

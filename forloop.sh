#!/bin/bash
for folder in $(find -type d);
do
	echo "the folder is $folder"
	if [ -d test ];
	then
		echo "the folder exists"
		echo "removing the folder"
		rm -rf test
	else
		echo "the folder does not exists"
	fi
done

#!/bin/bash

if [ $# -eq 2 ]
then
	filesdir=$1
	searchstr=$2
	if [ -d $filesdir ]
	then
		num_files=$(find $filesdir -type f -exec grep -l $searchstr {} + | wc -l)
		num_lines=$(grep -r $searchstr $filesdir | wc -l)
		echo "The number of files are $num_files and the number of matching lines are $num_lines"
		exit 0
	else
		echo "$filesdir does not represent a directory on the filesystem"
		exit 0
	fi
		
else
	echo "inputs are not presented!!"
	exit 0
fi



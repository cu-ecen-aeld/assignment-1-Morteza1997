#!/bin/bash

if [ $# -eq 2 ]
then
	writefile=$1
	writestr=$2
	DIR=$(dirname $writefile)
	if [ -d DIR ]
	then
		echo $writestr > $writefile
	else
		mkdir -p $DIR
		echo $writestr > $writefile
	fi
	exit 0
else	
	echo "this scripts accept two args"
	exit 1
fi

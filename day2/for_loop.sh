#!/bin/bash

<< task
1 is the argument for folder name
2 is the starting range
3 is the ending range
task

<< complete

for ((i=$2; i<=$3; i++));
do
	mkdir "$1$i"
done
complete

# loop for removing the above created folders


for ((i=$2; i<=$3; i++));
do
	rm -rf "$1$i"
done

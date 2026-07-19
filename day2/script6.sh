#!/bin/bash

#This is for practicing the for loop

# create 5 folder with tha name demo

<< comment

for ((i=1 ; i<=5 ;i++));
do
	mkdir demo$i
done

comment

# Verified that 5 folder exists, let's remove them

for ((i=1 ; i<=5 ; i++));
do 
	rm -rf demo$i
done

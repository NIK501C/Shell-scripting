#!/bin/bash

create_directory() {
	mkdir error
}

create_directory
# the next line should not work in 2nd time of calling because the folder already exists


# error handing

<< task

doing this code to avoid running the echo command coz that was running earlier even the folder exists,
with if statement, if the create_directory function is not running due to folder existience then the code will exit 
and the last echo command will print. That means we are doing error handling if something breaks in the middle, the codewill exit from there and the remaning code is not running
task

if ! create_directory; then
	echo " the code is being exited coz the folder already exists"
	exit 1
fi


echo "This should not print in the 2nd function call coz the folder already exists"


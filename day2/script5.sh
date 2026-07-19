#!/bin/bash

<< comment
This is for practicing if else condition
comment

read -p "Enter day:" day

# convert input into lowercase
# day=$(echo "$day" | tr '[:upper:]' '[:lower"]')


# convert input to lowercase using bash

day=${day,,}

if [[ "$day" == "saturday" ]]; then
	echo "It's a weekend"
elif [[ "$day" == "sunday" ]]; then
	echo "It's a weekend"
else
	echo "It's a weekday, Get up dude, you have to work today!!"
fi


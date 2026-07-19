#!/bin/bash

# taking input from user with a prompt

read -p "Enter Username:" username

sudo useradd -m $username

echo "New user added"

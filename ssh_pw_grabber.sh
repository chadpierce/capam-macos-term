#!/bin/bash

ssh_host=$1
ssh_port=$2

read -p "login: " ssh_user
read -p "password: " ssh_pass

echo "login is:    $ssh_user"
echo "password is: $ssh_pass"

read -p "hit enter to continue"
#ssh $ssh_user@$ssh_host -p $ssh_port

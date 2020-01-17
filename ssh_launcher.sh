#!/bin/bash

ssh_host=$1
ssh_port=$2

read -p "login: " ssh_user
ssh $ssh_user@$ssh_host -p $ssh_port

#!/bin/bash

userid=$(id -u)
time=$(date +%F-%H-%M-%S)

echo "$time"


if [ $userid -eq 0 ]
then
    echo "You are super user"
else
    echo "Please run this file with super user privileges"
    exit 1
fi
#!/bin/bash

userid=$(id -u)
'time=$(date +%F-%H-%M-%S)
scriptname=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$scriptname-$time.log'

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


if [ $userid -eq 0 ]
then
    echo "You are super user"
else
    echo "Please run this file with super user privileges"
    exit 1
fi
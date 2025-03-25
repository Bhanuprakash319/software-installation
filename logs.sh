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

validation(){
    if [ $1 -ne 0 ]
    then 
        echo "Installation of $2 is failure"
        exit 1
    else
        echo "Installation of $2 is success"
    fi
}

dnf install mysql -y &>>$LOGFILE
validation $? "mysql"
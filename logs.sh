#!/bin/bash

userid=$(id -u)
time=$(date +%F-%H-%M-%S)
scriptname=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$scriptname-$time.log
r="\e[31m"
g="\e[32m"
n="\e[0m"

#TIMESTAMP=$(date +%F-%H-%M-%S)
#SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
#LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


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
        echo -e "Installation of $2 is $r failure"
        echo "hi"
        exit 1
    else
        echo -e "Installation of $2 is $g success"
        echo "hi"
    fi
}

dnf install mysql -y &>>$logfile
validation $? "mysql"
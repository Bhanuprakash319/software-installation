#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] 
then
    echo "Try to install the software with root privileges"
    exit 1
else
    echo "You are super user"
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

dnf install mysql -y
validation $? "mysql"


dnf install gitl -y
validation $? "git"


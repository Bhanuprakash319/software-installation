#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] 
then
    echo "Try to install the software with root privileges"
    exit 1
else
    echo "You are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "Installation of mysql is failure"
    exit 1
else
    echo "Installation of mysql is success"
fi

dnf install git -y

if [ $? -eq 0 ]
then 
    echo "Installation of mysql is success"
else 
    echo "Installation of mysql is failure"
    exit 1
fi
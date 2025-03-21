#!/bin/bash

USERID=$(id -u)
echo "$USERID"

if [$USERID -ne 0]
then
    echo "Try to install the software with root privileges"
    exit 1
else
    echo "You are super user"
fi


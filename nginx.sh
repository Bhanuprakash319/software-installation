#!/bin/bash

userid=$(id -u)
if [ $userid -eq 0 ]
then 
    echo "you are super user"
else
    echo "you are not super user"
fi

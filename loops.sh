#!/bin/bash

userid=$(id -u)

r="\e[31m"
g="\e[32m"
n="\e[0m"

if [ $userid -eq 0 ]
then
    echo "$g You are super user $n"
else
    echo "$r You are not super user $n"
    exit 1
fi


for i in {1..20}
do 
   echo "$i"
done




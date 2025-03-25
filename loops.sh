#!/bin/bash

userid=$(id -u)
time=$(date +%F-%H-%M-%S)
filename=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$time-$filename.log

r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"

if [ $userid -eq 0 ]
then
    echo -e "$g You are super user $n"
else
    echo -e "$r You are not super user $n"
    exit 1
fi

validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "installation of $2 is $r failure $n"
        exit 1
    else
         echo -e "installation of $2 is $g success $n"
    fi
}

for i in $@
do
   echo "package to install $i"
   dnf list installed $i &>>$logfile
   if [ $? -eq 0 ]
   then 
        echo -e "$i is already installed, so $y skipping $n"
   else
        dnf install $i -y &>>$logfile
        validate $? $i
    fi
done




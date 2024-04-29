#!/bin/bash
USERID=$(id -u)

VALIDATE(){

if [ $1 -ne 0 ]
then
    echo "$2...FAILURE"
    exit 1
else
    echo "$2...SUCCESS"
}

if [ $USERID -ne 0 ]
then
    echo "Please run script with super user access"
    exit 2
else
    echo "You are super user"
fi

dnf install mysql -y

VALIDATE $? "Installing MYSQL"

#if [ $? -ne 0 ]
#then
#   echo "Installation of MYSQL...FAILURE"
#   exit 1

#else
#    echo "Installation of MYSQL...SUCCESS"
#*fi

dnf install git -y

VALIDATE $? "Installing Git"

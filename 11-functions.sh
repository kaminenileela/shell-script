#!/bin/bash
USERID=$(id -u)

VALIDATE(){

    echo "Exit status: $1"
    echo "What are you doing: $2"
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

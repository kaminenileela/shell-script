#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run script with super user access"
    exit 2
else
    echo "You are super user"
fi

dnf install mysqllll -y
dnf install git -y

    echo "Is script proceeding?"
 


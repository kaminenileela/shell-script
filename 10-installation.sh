#!/bin/bash

USERID=$((id -u))
echo "$USERID"
if [ $USERID -ne 0 ]
then
    echo "Please run script with super user access"
    exit 2
else
    echo "You are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of MYSQL...FAILURE"
    exit 1

else
    echo "Installation of MYSQL...SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of GIT...FAILURE"
    exit 1

else
    echo "Installation of GIT...SUCCESS"
fi


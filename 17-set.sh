#!/bin/bash
set -e

failure(){
    echo "Failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run script with super user access"
    exit 2
else
    echo "You are super user"
fi

yum install mysqllll -y
yum install git -y

    echo "Is script proceeding?"
 


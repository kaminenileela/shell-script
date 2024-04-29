#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo "please run script with sudo access"
    exit 1
else
    echo "you are super user"
fi

VALIDATE(){

if [ $1 -eq 0 ]
then
    echo -e "$2...$G SUCCESS $N"
else
    echo -e "$2....$R FAILURE $N"
fi

}

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing SQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing Git"

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installing with wrong name"
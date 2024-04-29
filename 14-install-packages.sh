#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

if [ $USERID -ne 0 ]
then
    echo "Please run script with super user access"
    exit 2
else
    echo "You are super user"
fi

for i in $@
do
  yum list installed $i &>> $LOGFILE
  
  if [ $? -eq 0 ]
  then
    echo "$i already installed... SKIPPING"
  else
    echo "need to install $i"
  fi  
   

done
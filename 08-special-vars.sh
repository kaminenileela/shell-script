#!/bin/bash

echo "all variables: $@"
echo "no of variables passed: $#"
echo "script name is $0"
echo "home directory of current user $HOME"
echo "current working directory $PWD"
echo "Which user is running the script $USER"
echo "hostname: $HOSTNAME"
echo "process id of current shell script: $$"
sleep 60 &
echo "process id of last background command: $!"
echo "Special variable for exit status $?"
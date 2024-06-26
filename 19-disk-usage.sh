#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
THRESHOLD=6
MESSAGE=""

while IFS= read -r line
do
   
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')

    if [ $USAGE -ge $THRESHOLD ]
    then 
       MESSAGE+="$FOLDER usage is $USAGE, exceeds usage limit $THRESHOLD\n"
    fi

done <<< $DISK_USAGE

   echo -e "message: $MESSAGE"

   echo "$MESSAGE" | mail -s "Disk usage Alert" vamsitron.bohr@gmail.com
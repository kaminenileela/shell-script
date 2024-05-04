#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
THRESHOLD=6
MESSAGE=""

while IFS= read -r line
do
    echo "$line"
    #USAGE=$(df -hT | grep xfs | awk -F " " '{print $6F}' | cut -d "%" -f1)
   # FOLDER=$(df -hT | grep xfs | awk -F " " '{print $NF}')

    #MESSAGE+= "$FOLDER usage is $USAGE, exceeds usage limit $THRESHOLD\n"

done <<< $DISK_USAGE

   echo -e "message: $MESSAGE"
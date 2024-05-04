#!/bin/bash

SOURCE_DIRECTORY=/tmp/app_logs

if [ -d $SOURCE_DIRECTORY ]
then
    echo "Source directory exists"

else
    echo "Please make sure $SOURCE_DIRECTORY  exist"
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

echo "old logs dated 14 days back: $FILES"

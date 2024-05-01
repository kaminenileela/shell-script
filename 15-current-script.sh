#!/bin/bash

COURSE="Devops from current script"

echo "Before calling  variable from current script: $COURSE"
echo "process id of current script : $$"

#./16-other-script.sh
source ./16-other-script.sh

echo "After calling  variable from other script: $COURSE"
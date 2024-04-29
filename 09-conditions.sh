#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 10 ] #-gt,-lt, -eq, -ge, -le
then
    echo "given number is greater than 10"

else
    echo " given number is less than 10"
fi


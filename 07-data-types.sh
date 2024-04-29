#!/bin/bash

NO1=$1
NO2=$2

SUM=$(($NO1+$NO2))

echo "Total of $NO1 and $NO2 is $SUM"

read "Enter no1:" a
read "Enter no2:" b

c= `expr $a-$b`
echo "Subtraction of $a and $b is $c" 
#!/bin/bash

NO1=$1
NO2=$2

SUM=$(($NO1+$NO2))

echo "Total of $NO1 and $NO2 is $SUM"

echo "Enter no1:"
read a
echo "Enter no2:"
read b

c=`expr $($a-$b)`
echo "Subtraction of $a and $b is $c" 
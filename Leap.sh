#!/bin/bash

echo "Enter the year:"
read year

if [ $((year % 400)) -eq 0 ]
then
    echo "$year is a Leap Year"

elif [ $((year % 100)) -eq 0 ]
then
    echo "$year is not a Leap Year"

elif [ $((year % 4)) -eq 0 ]
then
    echo "$year is a Leap Year"

else
    echo "$year is not a Leap Year"
fi

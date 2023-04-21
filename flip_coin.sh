#!/bin/bash

heads=0
tails=0

while [ $heads -ne 11 ] && [ $tails -ne 11 ]
do
    result=$((RANDOM%2))
    if [ $result -eq 0 ]
    then
        echo "Heads"
        ((heads++))
    else
        echo "Tails"
        ((tails++))
    fi
done

if [ $heads -eq 11 ]
then
    echo "Heads won!"
else
    echo "Tails won!"
fi


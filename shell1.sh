#!/bin/bash

goal=200
starting_money=100
bet=1
num_bets=0
num_wins=0
money=$starting_money

while [ $money -gt 0 ] && [ $money -lt $goal ]
do
    ((num_bets++))
    result=$((RANDOM%2))
    if [ $result -eq 0 ]
    then
        ((money-=bet))
    else
        ((money+=bet))
        ((num_wins++))
    fi
done

echo "Total number of bets: $num_bets"
echo "Total number of wins: $num_wins"
echo "Final amount of money: $money"
if [ $money -eq 0 ]
then
    echo "Sorry, you went broke."
else
    echo "Congratulations, you reached your goal of Rs 200!"
fi

#!/bin/bash

function is_prime {
    if (( $1 < 2 )); then
        return 1
    fi
    for (( i=2; i<$1; i++ )); do
        if (( $1 % $i == 0 )); then
            return 1
        fi
    done
    return 0
}


function get_palindrome {
    num=$1
    rev=0
    while (( $num > 0 )); do
        rem=$(( $num % 10 ))
        rev=$(( $rev * 10 + $rem ))
        num=$(( $num / 10 ))
    done
    echo $rev
}


read -p "Enter a number: " num


if is_prime $num; then
    echo "$num is a prime number."
    
    
    palindrome=$(get_palindrome $num)
    echo "The palindrome of $num is $palindrome."
    
    
    if is_prime $palindrome; then
        echo "$palindrome is also a prime number."
    else
        echo "$palindrome is not a prime number."
    fi
else
    echo "$num is not a prime number."
fi

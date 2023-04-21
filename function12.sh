#!/bin/bash

function is_palindrome {
    num=$1
    rev=0
    while (( $num > 0 )); do
        rem=$(( $num % 10 ))
        rev=$(( $rev * 10 + $rem ))
        num=$(( $num / 10 ))
    done
    if (( $rev == $1 )); then
        return 0
    else
        return 1
    fi
}


function are_palindromes {
    num1=$1
    num2=$2
    if is_palindrome $num1 && is_palindrome $num2; then
        echo "$num1 and $num2 are palindromes."
    else
        echo "$num1 and $num2 are not palindromes."
    fi
}



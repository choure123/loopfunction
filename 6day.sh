#!/bin/bash

n=$1
power=1

while [ $power -le 256 ] && [ $power -le $((2**n)) ]
do
  echo "$power."
  power=$((power*2))
done

 

#!/bin/bash


freezing_c=0
freezing_f=32
boiling_c=100
boiling_f=212

read -p "Enter temperature value: " temp
read -p "Convert to (F)ahrenheit or (C)elsius? " conv

case "$conv" in
    [Ff])
        if (( $(echo "$temp < $freezing_c" | bc -l) || $(echo "$temp > $boiling_c" | bc -l) )); then
            echo "Error: Temperature value is outside the freezing and boiling points of water."
        else
            degF=$(echo "scale=2; ($temp * 9/5) + 32" | bc)
            echo "$temp °C is equal to $degF °F"
        fi
        ;;
    [Cc])
        if (( $(echo "$temp < $freezing_f" | bc -l) || $(echo "$temp > $boiling_f" | bc -l) )); then
            echo "Error: Temperature value is outside the freezing and boiling points of water."
        else
            degC=$(echo "scale=2; ($temp - 32) * 5/9" | bc)
            echo "$temp °F is equal to $degC °C"
        fi
        ;;
    *)
        echo "Error: Invalid conversion selection. Please enter F or C."
        ;;
esac

#!/bin/bash  -x
n = int(input("Think of a number between 1 and 100:"))

low = 1
high = 100
guess = 50

while guess != n:
    response = input(f"Is the number less than {guess}? (y/n): ")
    if response == 'y':
        high = guess - 1
        guess = (low + high) // 2
    elif response == 'n':
        low = guess + 1
        guess = (low + high) // 2
    else:
        print("Invalid response. Please enter 'y' or 'n'.")
        continue

print(f"Magic number is {guess}!")

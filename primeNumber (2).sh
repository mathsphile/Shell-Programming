#!/bin/bash

echo "Enter a number:"
read num

# Check if the input is a valid integer
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
  echo "Error: Please enter a valid integer."
  exit 1
fi

# Check if the number is less than 2 (not prime)
if [ "$num" -lt 2 ]; then
  echo "$num is not a prime number."
  exit 0
fi

# Flag variable to track if the number is prime
flag=1
i=2

# Loop from 2 to the square root of the number
while [ $((i * i)) -le "$num" ]
do
  if [ $((num % i)) -eq 0 ]; then
    flag=0
    break
  fi
  i=$((i + 1))
done

# Check the flag and print the result
if [ "$flag" -eq 0 ]; then
  echo "$num is not a prime number."
else
  echo "$num is a prime number."
fi


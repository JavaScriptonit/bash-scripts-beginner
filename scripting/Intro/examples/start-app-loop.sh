#!/bin/bash

# while
counter=10

while (( counter > 0 )); do
    echo "Coounter value: ${counter}"
    # counter=$(( counter - 1 ))
    (( counter-- ))
done

# if
value=25

if (( value > 0 )); then
    echo "${value} is positive"
elif (( value == 0 )); then
    echo "${value} is zero"
else
    echo "${value} is negative"
fi
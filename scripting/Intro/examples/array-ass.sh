#!/bin/bash

# Объявление ассоциативного массива
# This feature is added in bash 4
declare -A person
person[name]="John"
person[age]=30
person[city]="New York"

# Доступ к элементам ассоциативного массива
echo "Name: ${person[name]}, Age: ${person[age]}, City: ${person[city]}"
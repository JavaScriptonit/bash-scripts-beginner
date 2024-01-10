#!/bin/bash

echo "Application is starting"

default_app_name="Spring"

echo "Aplication name is ${default_app_name}!"

# if
value=25
if (( value > 0 )); then
    echo "${value} is positive"
elif (( value == 0 )); then
    echo "${value} is zero"
else
    echo "${value} is negative"
fi

# case
echo "Enter any program:"
read program
case "${program}" in 
clean)
    echo "Clean is invoked"
    ;;
build)
    echo "Build is invoked"
    ;;
*)
    echo "${program} is not supported by this application"
    exit 2
    ;;
esac

#      0 1 2  3   4    5
array=(1 5 22 190 1240 2050)
echo "${array[2]}" # вывести 3е значение из массива, цифру 22
echo "${array[@]}" # вывести весь массив
echo "${#array[@]}" # узнать размер массива
array[2]=222 # изменить значение для 3его элемента массива
echo "${array[@]}" # проверить изменение элемента в массиве
array+=(10999 34) # добавить новые элементы в массив
echo "${array[@]}" # проверить изменения в массиве

echo "Enter application name:"
read app_name # !!!Input для ввода текста!!!

echo "New application name is ${app_name}!" # Вывод текста, введенного в input
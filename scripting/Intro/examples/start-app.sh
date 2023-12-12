#!/bin/bash

echo "Application is starting"

default_app_name="Spring"

echo "Aplication name is ${default_app_name}!"

value=25

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
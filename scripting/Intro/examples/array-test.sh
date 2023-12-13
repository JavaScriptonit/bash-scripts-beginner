#!/bin/bash

# Объявление массива
my_array=("apple" "banana" "cherry" "date")

# Доступ к элементам массива
echo "${my_array[0]}"  # Выводит "apple"

# Добавление элемента в массив
my_array+=("elderberry")

# Перебор элементов массива
for fruit in "${my_array[@]}"; do
    echo "Fruit: $fruit"
done
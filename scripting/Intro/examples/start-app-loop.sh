#!/bin/bash

# while
counter=10

while (( counter > 0 )); do
    echo "Coounter value: ${counter}"
    # counter=$(( counter - 1 ))
    (( counter-- ))
done

# until
count=10

until (( count <= 0 )); do
    echo "Count value: ${count}"
    # count=$(( count - 1 ))
    (( count-- ))
done

# for
array=(5 90 83 23 67)

for (( i = 0; i < "${#array[@]}"; i++ )); do
    echo "Index value: ${i}. Array value: ${array[i]}"
done

# foreach
new_array=(5 90 83 23 67)

for value in "${new_array[@]}" ; do
    echo "For each loop: ${value}"
done

# foreach
# Цикл проверяет существование файлов из массива "files"
# При существовании файла - выводит его мета данные
# При отсутствии файла - предлагает его создать
files=(file1 file2 file3 file4 file5)

for file in "${files[@]}" ; do
    if [[ -f "/Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/scripting/expansions/examples/${file}" ]]; then
        ls -l "/Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/scripting/expansions/examples/${file}"
    else 
        echo "File does not exist: ${file}"
        echo "Do you want to create this file? y/n"
        read createFileAnswer
        if [[ "${createFileAnswer}" = "y" ]]; then
            touch "/Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/scripting/expansions/examples/${file}"
        fi
    fi
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
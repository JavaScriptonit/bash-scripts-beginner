#!/bin/bash

# Передать аргументы при вызове скрипта командой:
# ./scripting/Intro/examples/start-app-function.sh g1 g2 g3
echo "Script all arguments $*"
# Вывод:
# Script all arguments g1 g2 g3

# Clean function
clean() {
    echo "Going to clean directory..."
    echo "Function first argument $1" # program1
    echo "Function all arguments $@" # "program1" "25" "98" "arg4"
    echo "Function all arguments $*" # program1 25 98 arg4

    index=0
    for arg in "$@"; do
        echo "Index: ${index}. Argument: ${arg}"
        (( index++ ))
    done
}

clean program1 25 98 arg4
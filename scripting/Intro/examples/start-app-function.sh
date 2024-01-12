#!/bin/bash

# Передать аргументы при вызове скрипта командой:
# ./scripting/Intro/examples/start-app-function.sh g1 g2 g3
echo "Script all arguments $*"
# Вывод:
# Script all arguments g1 g2 g3

#####################
# Cleanup working dir
# Global:
# - PATH
# - HOME
# Arguments:
# - None
#####################
clean() {
    echo "Going to clean directory..."
    echo "Function first argument $1" # program1
    echo "Function all arguments $@" # "program1" "25" "98" "arg4"
    echo "Function all arguments $*" # program1 25 98 arg4

    # local - использовать local для отсутствия возможности использования переменной вне функции clean
    local index=0
    for arg in "$@"; do
        echo "Index: ${index}. Argument: ${arg}"
        (( index++ ))
    done
    # return 5
    echo "Return value from function"
}

# clean program1 25 98 arg4

# Вывод статуса функции - "return 5"
# echo "Clean function status: $?"

result=$(clean program1 25 98 arg4)
echo "Clean function result: ${result}"
https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=29

# Conditionals. Part 1:

1. `cat ./scripting/Intro/examples/start-app.sh` - вывод содержимого скрипта
    1. `echo $?`: 0 - вывод 0/1 для уточнения успешности выполнения команды (status code выполнения программы)
2. `cat ./scripting/Intro/examples/start-app.s` - cat: ./scripting/Intro/examples/start-app.s: No such file or directory
    1. `echo $?`: 1
3. `man grep`:
    1. "0"     One or more lines were selected.
    2. "1"     No lines were selected.
    3. ">1"    An error occurred.
4. `test 10 -lt 15 && echo $?` - 0 (true / 10 меньше 15)
    1. `[[ 10 -lt 15 ]]`, `echo $?` - используется на практике
5. `test 10 -lt 5 || echo $?` - 1 (false / 10 меньше 5)
    1. `[[ 10 -lt 5 ]]`, `echo $?` - используется на практике

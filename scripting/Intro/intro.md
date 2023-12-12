https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=27
https://google.github.io/styleguide/shellguide.html

# Bash scripting. Intro:

1. `touch start-app.sh` - создаём файл
2. `chmod 777 start-app.sh` - дать права на запуск
3. `./start-app.sh` - запуск скрипта
4. `export PATH=$PATH:$PWD` - переписать PATH чтобы текущий путь до скрипта был в переменной для вызова скрипта из любой директории:
    1. `start-app`
5. ``
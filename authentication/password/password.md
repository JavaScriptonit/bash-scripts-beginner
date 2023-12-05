https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=23

# Password authentication:

1. `ssh`:
    1. `ssh -p 2022 ivan@localhost` или `ssh -p 2022 -l ivan localhost` - войти внутрь сервера по ssh 22 порту под пользователем ivan
    2. `ssh -p 2022 ivan@localhost "ls -a"` - выполнить команду на сервере под пользователем без открытия сессии
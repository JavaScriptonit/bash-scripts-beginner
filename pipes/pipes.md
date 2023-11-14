https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=8
# Pipes - "|":


1. `ls | head -4 | wc`: 2 строчки, 2 слова и 2 символа первых 4 файлов
```
       2       2      16
```
2. `ls | head -4`: вывести только 4 элемента
```
Ansible
Dockerfiles
InteractionWithEIP
InteractionWithForis
```
3. `cat .DS_Store | wc`: 
```
       6     201   14340
```
4. `cd bash-scripts; ls`:
```
README.md       pipes
```
5. `cd bash-scripts2 && ls`: выполнить ls только если перейти в bash-scripts2
```
cd: no such file or directory: bash-scripts2
```
6. `cd bash-scripts || ls`: выполнить ls или перейти в bash-scripts2 (выполнится 1ая успешная команда)
```
cd: no such file or directory: bash-scripts
README.md       pipes
```
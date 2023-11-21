https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=17
# File location commands:

1. `which`
    1. `which cat echo mkdir rm`: найти команды на диске. Где лежит программа
```
/bin/cat
echo: shell built-in command
/bin/mkdir
/bin/rm
```

2. `type`
    1. `type cat echo mkdir rm`: помогает распозновать не только пути к программам, но и allias
```
cat is /bin/cat
echo is a shell builtin
mkdir is /bin/mkdir
rm is /bin/rm
```
    2. `type ll`: 
```
ll is an alias for ls -lG
```

3. `whereis` - ищет только по default пути переменной PATH, а which/type ищут по актуальному PATH
    1. `whereis cat echo mkdir rm`:
```
/bin/cat
/bin/echo
/bin/mkdir
/bin/rm
```

4. `locate` - создаёт индекс для поиска файла по имени
5. `find` - ищет по любому мета значению файла (права доступа, размер файла, пользователь или группа, дата создания), но медленный поиск
    1. `find . -name "info"`:
```
./.git/objects/info
./.git/info
```
    2. `find . -name "info" 2> /dev/null` - поиск без засорения терминала ошибками 
    3. `find . -name "*info*" 2> /dev/null` - для поиска с другими значениями до или после *
    4. `find . -type f -name "*info*" 2> /dev/null` - для поиска только файлов
    5. `find . -user andreyshabunov -name "*info*" 2> /dev/null` - для поиска по имени пользователя
6. `xargs` - например, для удаления файлов
    1. `find . -type f -user andreyshabunov -name "*info*" -empty 2> /dev/null | xargs rm` - delete file ./info.txt



### Alias:
1. `alias ll="ls -lG"` - присвоить алиас для команды для вызова в дальнейшем по нему. Работает как переменная
    1. `ll`:
```
total 8
-rw-r--r--  1 andreyshabunov  staff  892 14 ноя 20:32 README.md
drwxr-xr-x  3 andreyshabunov  staff   96 15 ноя 20:27 dir
drwxr-xr-x  3 andreyshabunov  staff   96 19 ноя 21:19 editors
drwxr-xr-x  3 andreyshabunov  staff   96 21 ноя 23:30 file-location
drwxr-xr-x  3 andreyshabunov  staff   96 15 ноя 20:26 files
drwxr-xr-x  3 andreyshabunov  staff   96 14 ноя 20:36 history
drwxr-xr-x  3 andreyshabunov  staff   96 15 ноя 20:26 inodes
drwxr-xr-x  4 andreyshabunov  staff  128 16 ноя 19:12 links
drwxr-xr-x  3 andreyshabunov  staff   96 14 ноя 20:37 pipes
drwxr-xr-x  6 andreyshabunov  staff  192 19 ноя 21:24 text
```
2. `./.git/objects/info` - узнать файл или директория:
```
./.git/objects/info: directory
```
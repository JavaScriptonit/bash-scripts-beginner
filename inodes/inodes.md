https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=12

# Inodes (Мета данные):
Inode (Index Node) - это структура данных в файловых системах UNIX, которая содержит метаданные (например, права доступа, время создания и изменения, количество ссылок и т.д.) о файлах и каталогах.

Inode table - это таблица, содержащая все Inode в файловой системе.


1. `ls -i /Users/aashabunov/IdeaProjects/bash-scripts`:
```
121967500 README.md     125977988 dir           125992066 files         125262487 history       125997011 inodes        121967961 pipes
```
2. `stat ./files/files.md` - посмотреть все метаданные файла:
```
16777234 125992067 -rw-r--r-- 1 aashabunov ADMSK\Domain Users 0 325 "Nov 15 19:44:41 2023" "Nov 15 19:44:41 2023" "Nov 15 19:44:41 2023" "Nov 15 19:31:34 2023" 4096 8 0 ./files/files.md
```
3. `ls -l ./files/`:
```
total 8
-rw-r--r--@ 1 aashabunov  ADMSK\Domain Users  325 15 ноя 19:44 files.md
```
4. `df -hi` - Inodes free space and human readable format (Gi)

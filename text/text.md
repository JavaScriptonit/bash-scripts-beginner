https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=15
# File Text Manipulation:
1. `cut` - вырезать значения из файла по критериям
2. `paste` - 
3. `tr` - 
4. `sort` - sort by number/alpha
5. `unique` - unique values
6. `tee` - cat and forward
7. `grep` - filter

## Examples:
1. `cut -d "," -f2 text/examples/examples.md`:
```
Petr
Ivan
Sveta
Dina
```
2. `cut -d "," -f3-4 text/examples/examples.md`:
```
38,Developer
27,Manager
21,QA
42,Director
```
3. `ls -l /Users/aashabunov/IdeaProjects/bash-scripts | tail -n +2 | cut -w -f1-9`:
```
-rw-r--r--@     1       aashabunov      1402375171      0       10      ноя     12:08   README.md
drwxr-xr-x@     3       aashabunov      1402375171      96      15      ноя     18:48   dir
drwxr-xr-x@     3       aashabunov      1402375171      96      17      ноя     12:49   editors
drwxr-xr-x@     3       aashabunov      1402375171      96      15      ноя     19:43   files
drwxr-xr-x@     3       aashabunov      1402375171      96      14      ноя     19:58   history
drwxr-xr-x@     3       aashabunov      1402375171      96      15      ноя     19:45   inodes
drwxr-xr-x@     3       aashabunov      1402375171      96      10      ноя     12:09   pipes
drwxr-xr-x@     4       aashabunov      1402375171      128     17      ноя     13:17   text
```
4. `ls -l /Users/aashabunov/IdeaProjects/bash-scripts | tail -n +2 | cut -w -f6-8 | sort -n`:
```
10      ноя     12:08
10      ноя     12:09
14      ноя     19:58
15      ноя     18:48
15      ноя     19:43
15      ноя     19:45
17      ноя     12:49
17      ноя     13:17
```
5. `ls -l /Users/aashabunov/IdeaProjects/bash-scripts | tail -n +2 | cut -w -f6 | sort -n | uniq -c`:
```
   2 10
   1 14
   3 15
   2 17
```
6. `ls -l /Users/aashabunov/IdeaProjects/bash-scripts | tail -n +2 | cut -w -f6 | sort -n | uniq -c | tee ./text/examples/uniq-numbers-ls-bash-scripts.txt | cut -w -f2`:
    1. Выводит список файлов в ./bash-scripts
    2. Выводит список со 2ой строчки
    3. Выводит только 6 колонку из данного формата
    4. Сортирует по числам
    5. Выводит только уникальные значения и подсчитывает кол-во каждого уник значения
    6. Сохраняет файл /text/examples/uniq-numbers-ls-bash-scripts.txt со значениями
    7. Выводит только 2ую колонку из данного формата:
```
1
1
3
3
```

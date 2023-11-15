https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=10

# Directory Operations:
1. `cd`
2. `pwd`
3. `basename` - path end
4. `dirname` - path begin
`basename` + `dirname` === /Users/aashabunov/IdeaProjects/bash-scripts/dir
```
aashabunov$ basename /Users/aashabunov/IdeaProjects/bash-scripts/dir/dir.md
dir.md
aashabunov$ dirname /Users/aashabunov/IdeaProjects/bash-scripts/dir/dir.md
/Users/aashabunov/IdeaProjects/bash-scripts/dir
```
5. `mkdir`
6. `rmdir`
7. `rm -r` - рекурсивное удаление. Удаляет директории даже если в них есть др директории и файлы

https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=9
# History:
/Users/aashabunov/.zshrc - config file
/Users/aashabunov/.zsh_history - history zsh
/Users/aashabunov/.bash_history - history bash

1. `vi /Users/aashabunov/.zsh_history` - view history
2. `tail /Users/aashabunov/.zsh_history` - list last 10 commands
3. `wc /Users/aashabunov/.zsh_history`:
```
    1479    5629   53455 /Users/aashabunov/.zsh_history
```
4. `wc /Users/aashabunov/.bash_history`:
```
     500    1352   17498 /Users/aashabunov/.bash_history
```
5. `CTRL + R` - search commands
6. `!1002` - use command 1002 from /Users/aashabunov/.zsh_history
7. `echo $HISTSIZE` - 2000 (history size)
    1. `echo 'export HISTSIZE=25000' 1>> /Users/aashabunov/.zshrc` - поменять размер до 25000
8. `history -c` - удалить историю
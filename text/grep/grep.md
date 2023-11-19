https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=16
# Grep & Egrep:

1. `grep export /Users/aashabunov/.zshrc` - поиск всех строк с "export" внутри
```
export PATH=/usr/local/bin:$PATH
export PATH=/opt/homebrew/bin:$PATHexport HISTSIZE=25000
export HISTSIZE=25000
```
2. `grep " export " /Users/aashabunov/.zshrc` - поиск всех строк с " export " внутри чтобы избежать слов содержащих export
3. `egrep "\w+export" /Users/aashabunov/.zshrc` - egrep используется для более сложных запросов, например, \w+export для поиска слов содержащих export и более 1 символа перед export
4. `egrep "(\w+l\s)export\s+" /Users/aashabunov/.zshrc` - для поиска значений содержащих export и 1 или более символов до либо пробел и пробел после без символов после export
5. `egrep "\d+" /Users/aashabunov/.zshrc` - поиск строчек с цифрами болле 1
```
PATH="~/.nvm/versions/node/v12.22.1/bin:$PATH"
export PATH=/opt/homebrew/bin:$PATHexport HISTSIZE=25000
export HISTSIZE=25000
```
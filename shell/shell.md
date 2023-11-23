https://habr.com/ru/articles/162339/
# zsh и bash: что выбрать

##  History
1. `export HISTFILE=~/.zsh_history` - хранить историю в указанном файле
2. `export HISTSIZE=1000` - максимальное число команд, хранимых в сеансе



## bash & zsh перестали видеть программы в cd /bin/
```
zsh:
which cat mkdir rm ls
cat not found
mkdir not found
rm not found
ls not found
bash:
exec bash
bash-5.2$ ls
bash: ls: команда не найдена
bash-5.2$ ls -l
bash: ls: команда не найдена

cd /bin/:
\[*         chmod*      dash*       df*         expr*       ksh*        ln*         mv*         pwd*        rmdir*      stty*       test*       zsh*
```
### Исправить содержимое файлов:
```
Измените содержимое файла /Users/aashabunov/.zshrc на следующее:
export PATH="/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="~/.nvm/versions/node/v12.22.1/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export HISTSIZE=25000


Измените содержимое файла /Users/aashabunov/.bash_profile на следующее:
export PATH="/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
```
1. `source ~/.zshrc` - для применения изменений в zsh
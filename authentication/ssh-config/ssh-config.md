https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=26

# SSH config:

1. Config path: `/Users/andreyshabunov/.ssh`

2. Files: `ls -l /Users/andreyshabunov/.ssh`:
```
total 56
-rw-r--r--@ 1 andreyshabunov  staff    78  4 мар  2022 config
-rw-------@ 1 andreyshabunov  staff   464  4 мар  2022 id_ed25519
-rw-r--r--@ 1 andreyshabunov  staff   102  4 мар  2022 id_ed25519.pub
-rw-------  1 andreyshabunov  staff  2635  2 фев  2023 id_rsa
-rw-r--r--@ 1 andreyshabunov  staff   593  2 фев  2023 id_rsa.pub
-rw-r--r--@ 1 andreyshabunov  staff  6805  5 янв  2023 known_hosts
```
3. Config: `/Users/andreyshabunov/.ssh/config`
4. `cat config` - указаны ключи и значения для хостов:
```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519

Host ubuntu-ssh
Hostname localhost
Port 2022
User andreyshabunov
IdentityFile ~/.ssh/id_rsa
```
5. `ssh ubuntu-ssh` - для подключения к хосту из конфига
6. `ssh ubuntu-ssh ls -a` - для вывода команды в терминале через подключение к серверу из конфига
7. `scp /Users/andreyshabunov/test.txt ubuntu-ssh:/home/andreyshabunov` - скопировать файл на сервер из конфига
8. `ssh -v ubuntu-ssh` - логи подключения:
```
1. Считывается /Users/andreyshabunov/.ssh/config 
2. Подключается к серверу из конфига с применением всех указанных в конфиге параметров
```
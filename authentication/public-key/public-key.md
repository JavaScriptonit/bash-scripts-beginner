https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=24

# Public-key authentication:

1. `ssh-keygen` - сгенерировать пару ключей (публичный и приватный) в дир /Users/aashabunov/.ssh/id_rsa
    1. `id_rsa.pub` + `id_rsa` - будут сгенерированы после выполнения команды
2. `ssh -i ~/.ssh/id_rsa -p 2022 ashabunov@localhost` - подключение к серверу при помощи ключа и без ввода пароля
    1. После подключения к серверу Хост будет добавлен в /Users/aashabunov/.ssh/known_hosts
3. `ssh -v -i ~/.ssh/id_rsa -p 2022 ashabunov@localhost` - добавить "-v" для DEBUG мода и просмотра всех логов подключения
https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=25

# Network file ransfer:

1. `scp` - копирование 1го или пачки файлов с 1го сервера на другой.
Копирование работает по аналогии с SSH и использует аналогичные параметры при подключении.
    1. `scp -P 2022 ./network/file-transfer.md ashabunov@localhost:/home/ashabunov` - копирование с ПК на сервер:
    ```
    file-transfer.md 100% 72 54.4KB/s 00:00
    ```
    2. `scp -P 2022 ashabunov@localhost:/home/ashabunov/file-transfer.md ./network/file-transfer-remote.md` - копирование с сервера на ПК:
    ```
    file-transfer.md 100% 72 54.4KB/s 00:00
    ```
2. `sftp` - Secure File Transfer Protocol, SSH протокол под капотом:
    1. `sftp -P 2022 ashabunov@localhost` - connected to localhost:
        1. `ls` - посмотреть файлы на сервере
        2. `lls` - посмотреть файлы локально
        3. `pwd`
        4. `lpwd`
        5. `put -R /Users/aashabunov/IdeaProjects/bash-scripts/network/network.md` - скопировать файлы или директорию на сервер:
        ```
        Uploading /Users/aashabunov/IdeaProjects/bash-scripts/network/network.md to /home/ashabunov
        ```
        6. `get id_rsa.pub` - скопировать файлы или директорию на ПК:
        ```
        Fetching /home/ashabunov/id_rsa.pub to id_rsa.pub 
        ```
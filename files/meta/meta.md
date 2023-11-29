https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=18

# File Meta-Information:
## Change Meta-Information:
1. `stat`:
    1. `stat -x ./files/meta/meta.md` - заменяет ls -l для 1го файла:
    ```
    File: "./files/meta/meta.md"
    Size: 267          FileType: Regular File
    Mode: (0644/-rw-r--r--)         Uid: (1529087358/aashabunov)  Gid: (1402375171/(1402375171)
    Device: 1,18   Inode: 134165844    Links: 1
    Access: Fri Nov 24 14:41:24 2023
    Modify: Fri Nov 24 14:41:24 2023
    Change: Fri Nov 24 14:41:24 2023
    Birth: Fri Nov 24 14:25:18 2023
    ```
    2. `stat /var/allure/allure-server-store`:
    ```
    File: /var/allure/allure-server-store -> /var/allure/allure-data/
    Size: 24              Blocks: 0          IO Block: 4096   symbolic link
    Device: fd03h/64771d    Inode: 6293014     Links: 1
    Access: (0777/lrwxrwxrwx)  Uid: (    0/    root)   Gid: (    0/    root)
    Access: 2023-11-24 15:04:05.424614124 +0300
    Modify: 2023-11-16 15:26:04.023099290 +0300
    Change: 2023-11-16 15:26:04.023099290 +0300
    Birth: -
    ```
2. `file` - проверить файл или директория/линк:
    1. `file -h ./files/examples/files_s_link.md`:
    ```
    ./files/examples/files_s_link.md: Unicode text, UTF-8 text
    ```
    2. `file -h /var/allure/allure-server-store`:
    ```
    /var/allure/allure-server-store: symbolic link to /var/allure/allure-data/
    ```
3. `wc` - подсчет строчек, слов и байт в файле:
    1. `wc ./files/meta/meta.md`:
    ```
    26      97     940 ./files/meta/meta.md
    ```
4. `du` - проверка занимаемого места
    1. `du -ha ./files | wc -l` - кол-во файлов в ./files: `5`
    2. `du -hs ./files` - суммировать вес всех файлов:
    ```
    8,0K    ./files
    ```
5. `touch` - создание файла
    1. `Access` - дата последнего просмотра файла
        1. `touch -a ./files/meta/meta.md` - изменить дату
    2. `Modify` - дата последнего изменения содержимого файла
        1. `touch -m ./files/meta/meta.md` - изменить дату
    3. `Change` - дата последнего изменения мета-информации файла
        1. `touch -m ./files/meta/meta.md` - изменить дату
    4. `touch ./files/meta/new_file.md` - создать новый файл
6. `chown` - поменять владельца файла
    1. `sudo chown root README.md`:
    ```
    -rw-r--r--@ 1 aashabunov  1402375171    0 17 ноя 14:36 README.md
    -rw-r--r--@ 1 root        1402375171    0 17 ноя 14:36 README.md
    ```
    2. `sudo chown -Rv root ./files` - поменять владельца для всех вложенных файлов и папок и вывести в консоль изменения:
    ```
    ./files/meta/meta.md
    ./files/meta
    ./files/examples/files_s_link.md
    ./files/examples
    ./files/files.md
    ./files
    ```
7. `chgrp` - поменять владельца группы
    1. `chgrp everyone README.md`:
    ```
    -rw-r--r--@ 1 aashabunov  1402375171    0 17 ноя 14:36 README.md
    -rw-r--r--@ 1 aashabunov  everyone      0 17 ноя 14:36 README.md
    ```
    2. `sudo chgrp -Rv everyone ./files`:
    ```
    ./files/meta/meta.md
    ./files/meta
    ./files/examples/files_s_link.md
    ./files/examples
    ./files/files.md
    ./files
    ```
8. `chmod` - изменить права доступа к файлам и директориям
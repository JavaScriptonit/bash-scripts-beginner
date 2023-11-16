https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=13

# Hard and soft links
1. Hard link:
    1. Только на файл. Нельзя сделать на директорию
    2. Имеет один ID с оригиналом
    3. Является копией реального файла
2. Soft link:
    1. Можно сделать на директорию или файл.
    2. Имеет разные ID
    3. Является ярлыком оригинала и имеет путь к оригиналу
        1. Ссылается на путь оригинала. Будет битым если изменить путь оригинала

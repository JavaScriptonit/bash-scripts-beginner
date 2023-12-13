https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=28

# Shell Expansions:

1. `Brace Expansion` - (x..y) (a,b,c)
    1. `touch file1 file2 file3 file4` - создать тест файлы
    2. `ls -l file{1..3}` - отобразить файлы с рэнжом 1-2
    ```
    -rw-r--r--  1 andreyshabunov  staff  0 13 дек 20:18 file1
    -rw-r--r--  1 andreyshabunov  staff  0 13 дек 20:18 file2
    -rw-r--r--  1 andreyshabunov  staff  0 13 дек 20:18 file3
    ```
    3. `echo {a..z}`:
    ```
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    ```
    4. `rm file{1,2,3}` - удалить перечисленные файлы:
    ```
    -rw-r--r--  1 andreyshabunov  staff  0 13 дек 20:18 file4
    ```
2. `Tilde expansion` - HOME директория
    1. `echo ~/` - /Users/andreyshabunov/
3. `Parameter & variable expansion` - $var ${var} ${var:=default}
    1. `echo ${value:=45}` - вывести 45 если переменная value - пустая. Выводит значение value
4. `Command substitution` - $(command) `command`
    1. `echo "The first file in ${PWD} is $(ls | head -n1)"` - вывести 1 файл из текущей директории:
    ```
    The first file in /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/scripting/expansions/examples is file1
    ```
5. `Arithmetic expansion` - $(( expression )) - арифмитические вычисления
    1. `echo "$(( (5 ** 2 + 3) / 2 ))"` - 14
6. `Filename expansion` - "* ? [..]"
    1. `ls file*` - вывести все файлы с приставкой file:
    ```
    file1   file2   file3   file4
    ```
    2. `ls file?` - вывести все файлы с приставкой file и 1 любым символом после:
    ```
    file1   file2   file3   file4
    ```
    3. `ls file[1,2,6]` - вывести файлы с окончанием на выбор:
    ```
    file1   file2
    ```
7. `Word splitting` - <space><tab><newline>
    Антипаттерн с пробельными символами. Применяется по-умолчанию.

    `Word splitting` - это процесс разделения строки на слова (или токены) с использованием определенных разделителей, таких как пробелы, табуляции и символы новой строки. По умолчанию в bash происходит автоматическое разделение строк на слова с учетом этих разделителей.

    Чтобы обойти `word splitting`, можно использовать кавычки или скобки для явного указания границ слов. Например:
    ```bash
    my_string="Hello     World"
    echo $my_string  # Выведет: Hello World

    # Используем кавычки, чтобы сохранить пробелы и табуляции
    echo "$my_string"  # Выведет: Hello     World
    ```

    `Word splitting` может быть полезным для разделения строк на отдельные слова, но иногда может вызывать проблемы, если не учитывать специальные символы, пробелы и табуляции в строках. Поэтому важно понимать, как работает `word splitting` и использовать его осторожно, чтобы избежать непредвиденных проблем.
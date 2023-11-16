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

## Create a Soft link:
1. `ln -s /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/test/test.txt /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/soft-link/text.txt` - create a soft link
2. `cat /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/soft-link/text.txt`
3. `echo "second test" >> /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/soft-link/text.txt` - записать через линк в файл
4. `ls -i ./links/examples/soft-link` - проверить ID линк файла
5. `mv /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/test/test.txt /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/test/test2.txt` - если переименовать файл - линка работать не будет. Нужно сделать новую линку

## Create Hard link:
1. `ln /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/test/test.txt /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/hard-link/test.txt` - create a hard link
2. `ls -i /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/hard-link && ls -i /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/test`:
```
49805179 test.txt
49805179 test.txt
```
3. `ls -i /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/hard-link && ls -i /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/test && ls -i /Users/andreyshabunov/PhpstormProjects/bash-scripts-beginner/links/examples/soft-link`:
```
49805179 test.txt
49805179 test.txt
49807400 text.txt
```

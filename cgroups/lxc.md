https://habr.com/ru/companies/otus/articles/673960/ - Изоляция процессов в Linux
https://habr.com/ru/companies/redhatrussia/articles/352052/ - Linux-контейнеры: изоляция
https://habr.com/ru/articles/563040/ - Контейнер LXC для веб-разработки
https://www.youtube.com/watch?v=8va135GTjQw&t=71s - Видео-демонстрация

## В чем разница LXC и Docker:

**Docker** - это контейнер для упаковки одного процесса или службы;
на практике Docker это пачка легких контейнеров для упаковки одного веб-сервиса;

**LXC** - это легкий контейнер на один веб-сервис или сайт, включающий все службы, которые нужны для его функционирования.

## В каких случаях удобно применять LXC:

**Legacy**: у вас уже есть веб-сервис/сайт размещенный на выделенном сервере и нужно упаковать его в форме контейнера, который можно отдать разработчикам, либо перенести на другой сервер (резервный или stage);

Вам нравится работать в окружении, где все службы собраны в одном контейнере;

Нужна изоляция на сервере чтобы каждый веб-сервис находился в своем контейнере, но при этом не терять производительность как в случае с виртуальными машинами;

Если вы умеете настраивать основные сервисы в Linux, значит вы сможете создать LXC контейнер под ваш проект. LXC очень похож на обычную виртуалку.


## Установка LXC под Ubuntu `apt install lxc`:  

```
# 1. создать контейнер с именем myapp
sudo lxc-create -t download -n myapp -- -d ubuntu -r focal -a amd64

# 2. посмотреть список контейнеров
sudo lxc-ls -f

# 3. запустить контейнер
sudo lxc-start myapp

# 4. остановить
sudo lxc-stop myapp

# 5. зайти в shell контейнера
sudo lxc-attach myapp

# 6. посмотреть файловую систему контейнера
ls -al /var/lib/lxc/myapp/rootfs
```

## Как пробросить (и особенность настройки прав):

Конфигурируется это через файл настроек: `/var/lib/lxc/myapp/config`

```
# Добавляем строку
# монтируем директорию хоста /home/user1/myapp в контейнер /var/www/myapp
lxc.mount.entry = /home/user1/myapp var/www/myapp none bind,create=dir,rw 0 0
```
**Права для рабочей директории**

Бывают трудности, когда uid и gid пользователя не совпадают на хосте и в контейнере.
Когда какой-то файл создается в пробрасываемой директории контейнера, скажем от пользователя ubuntu с uid=1000, а у вас на хосте uid=1002, то файл будет не доступен на редактирование.

Рекомендую после создания контейнера создать пользователя в контейнере с таким же uid и gid, как и в вашей хост системе:
```
# Выполнить команду id, посмотреть свой uid и gid
$ id
uid=1002(user1) gid=1002(user1) группы=1002(user1),27(sudo),130(docker)

# Настроить аналогичного пользователя в myapp,
# перейти в контейнер
sudo lxc-attach myapp 
userdel -r ubuntu
groupadd -g 1002 user1
useradd -s /bin/bash --gid 1002 -G sudo --uid 1002 -m user1
```

## Когда Docker может быть лучше:

**Вам нужен IaC**. Dockerfile это отраслевой стандарт.
В LXC похожее отсутствует. Концепция Infrastructiure as Code мне очень близка, я попробовал создать shell-скрипт который является аналогом Dockerfile чтобы воспроизводит LAMP окружение на LXC, но с помощью скрипта не обновить одной командой продакшен.

Если нужен готовый **публичный образ** какой-то программы или опубликовать свой образ.
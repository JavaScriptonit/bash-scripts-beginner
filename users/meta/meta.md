https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=19

# User management:
1. `env | grep USER` - текущий пользователь
```
USER=aashabunov
USER_ZDOTDIR=/Users/aashabunov
```
2. `whoami` - aashabunov
    1. `sudo whoami` - root
3. `id`:
```
uid=1529087358(aashabunov) gid=1402375171 groups=1402375171,12(everyone),62(netaccounts),79(_appserverusr),80(admin),81(_appserveradm),98(_lpadmin),701(com.apple.sharepoint.group.1),702(com.apple.sharepoint.group.2),33(_appstore),100(_lpoperator),204(_developer),250(_analyticsusers),395(com.apple.access_ftp),398(com.apple.access_screensharing),399(com.apple.access_ssh),400(com.apple.access_remote_ae)
```
    1. uid - user id
    2. gid - group id
4. `who` - залогиненные пользователи
```
aashabunov       console      22 ноя 11:34 
```
5. `users` - залогиненные пользователи
```
aashabunov
```

## User commands:
1. `useradd` - создать польз-я
2. `userdel` - удалить польз-я
3. `usermod` - изменить польз-я
4. `passwd` - создать пароль для польз-я
5. `chfn` - изменить перс данные польз-я
6. `chsh` - изменить shell по-умолчанию
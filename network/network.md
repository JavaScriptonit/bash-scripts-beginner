https://coursehunter.net/course/rukovodstvo-dlya-nachinayushchih-po-napisaniyu-skriptov-na-shell-i-bash?lesson=22

# Network connections:

1. `host` - ищет ip или hostname машины 
    1. `host google.com`:
    ```
    google.com has address 64.233.164.101
    google.com has IPv6 address 2a00:1450:4010:c07::71
    google.com mail is handled by 10 smtp.google.com.
    ```
2. `ping` - отправка пакетов на хост для проверки скорости передачи и доступности сервера:
    1. `ping google.com`:
    ```
    PING google.com (64.233.164.138): 56 data bytes
    64 bytes from 64.233.164.138: icmp_seq=0 ttl=60 time=23.827 ms
    ```
3. `traceroute` - проверка маршрутов сети:
    1. `traceroute google.com`:
    ```
    traceroute: Warning: google.com has multiple addresses; using 64.233.164.138
    traceroute to google.com (64.233.164.138), 64 hops max, 52 byte packets
    1  router.asus.com (192.168.1.1)  23.089 ms  3.835 ms  2.706 ms
    2  80-72-28-254.umnyeseti.ru (80.72.28.254)  6.838 ms  4.161 ms  2.369 ms
    3  * * *
    4  185-17-155-2.umnyeseti.ru (185.17.155.2)  8.478 ms  4.404 ms  3.776 ms
    5  * * *
    6  108.170.250.33 (108.170.250.33)  14.233 ms
        108.170.250.129 (108.170.250.129)  8.364 ms
        108.170.250.33 (108.170.250.33)  8.463 ms
    7  108.170.250.130 (108.170.250.130)  15.179 ms
        108.170.250.83 (108.170.250.83)  8.889 ms
        108.170.250.51 (108.170.250.51)  8.922 ms
    8  142.251.237.154 (142.251.237.154)  25.006 ms
        209.85.249.158 (209.85.249.158)  23.876 ms
        72.14.234.54 (72.14.234.54)  25.198 ms
    9  142.251.238.72 (142.251.238.72)  84.423 ms
        142.251.237.148 (142.251.237.148)  25.410 ms
        209.85.254.6 (209.85.254.6)  29.584 ms
    10  72.14.237.199 (72.14.237.199)  26.106 ms
        216.239.40.61 (216.239.40.61)  28.668 ms
        216.239.46.139 (216.239.46.139)  27.467 ms
    11  * * *
    12  * * *
    13  * * *
    14  * * *
    15  * * *
    16  * * *
    17  * * *
    18  * * *
    19  * * *
    20  lf-in-f138.1e100.net (64.233.164.138)  23.953 ms  24.901 ms  18.429 ms
    ```
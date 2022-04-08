# linuxpro-homework08

### Домашнее задание
работаем с процессами

Описание/Пошаговая инструкция выполнения домашнего задания:
Задания на выбор:

1. написать свою реализацию ps ax используя анализ /proc
Результат ДЗ - рабочий скрипт который можно запустить
2. написать свою реализацию lsof
Результат ДЗ - рабочий скрипт который можно запустить
3. дописать обработчики сигналов в прилагаемом скрипте, оттестировать, приложить сам скрипт, инструкции по использованию
Результат ДЗ - рабочий скрипт который можно запустить + инструкция по использованию и лог консоли
4. реализовать 2 конкурирующих процесса по IO. пробовать запустить с разными ionice
Результат ДЗ - скрипт запускающий 2 процесса с разными ionice, замеряющий время выполнения и лог консоли
5. реализовать 2 конкурирующих процесса по CPU. пробовать запустить с разными nice
Результат ДЗ - скрипт запускающий 2 процесса с разными nice и замеряющий время выполнения и лог консоли


### 4. реализовать 2 конкурирующих процесса по IO. пробовать запустить с разными ionice

скрипт [ionice_script.sh](https://github.com/evgeniy-feoktistov/linuxpro-homework08/blob/main/ionice_script.sh)

вывод консоли:
```
root@ubuntu-otus-admlinuxpro:/home/ujack/otus-linuxadminpro/linuxpro-homework08# ./ionice_script.sh
Старт ionice direct (прямая запись на диск) в 2 потока
Первый поток имеет более высокий приоритет
1048576+0 records in
1048576+0 records out
536870912 bytes (537 MB, 512 MiB) copied, 121.37 s, 4.4 MB/s

real    2m1.380s
user    0m1.462s
sys     0m36.102s
1048576+0 records in
1048576+0 records out
536870912 bytes (537 MB, 512 MiB) copied, 121.491 s, 4.4 MB/s

real    2m1.502s
user    0m3.342s
sys     1m13.055s
******************************************************
Старт ionice без direct в 2 потока
Первый поток имеет более высокий приоритет
1048576+0 records in
1048576+0 records out
536870912 bytes (537 MB, 512 MiB) copied, 1.1299 s, 475 MB/s

real    0m1.136s
user    0m0.076s
sys     0m1.057s
1048576+0 records in
1048576+0 records out
536870912 bytes (537 MB, 512 MiB) copied, 1.17641 s, 456 MB/s

real    0m1.182s
user    0m0.164s
sys     0m1.012s

```

### 5. реализовать 2 конкурирующих процесса по CPU. пробовать запустить с разными nice

скрипт [nice_script.sh](https://github.com/evgeniy-feoktistov/linuxpro-homework08/blob/main/nice_script.sh)

Вывод консоли
```
root@ubuntu-otus-admlinuxpro:/home/ujack/otus-linuxadminpro/linuxpro-homework08# ./nice_script.sh
1048576+0 records in
1048576+0 records out
4294967296 bytes (4.3 GB, 4.0 GiB) copied, 2.56905 s, 1.7 GB/s

real    0m2.579s
user    0m0.116s
sys     0m2.438s
1048576+0 records in
1048576+0 records out
4294967296 bytes (4.3 GB, 4.0 GiB) copied, 2.58969 s, 1.7 GB/s

real    0m2.596s
user    0m0.240s
sys     0m4.877s
```

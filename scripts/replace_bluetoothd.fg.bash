#!/usr/bin/env bash

pid=$(ps aux | grep bluetoothd | grep -vP 'replace|grep'| awk '{print $2}' )
sudo kill -9 $pid > /dev/null 2>&1

sudo LD_PRELOAD=./$1 bluetoothd $@ -n

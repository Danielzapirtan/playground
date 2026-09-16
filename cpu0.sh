#! /bin/bash

PATH=/usr/bin:/bin

for cpu in $(seq 1 7); do
	echo 1 >/sys/devices/system/cpu/cpu$cpu/online
done

#! /bin/bash

echo 1 >/sys/devices/system/cpu/cpu1/online
for cpu in $(seq 2 7); do
	echo 0 >/sys/devices/system/cpu/cpu$cpu/online
done

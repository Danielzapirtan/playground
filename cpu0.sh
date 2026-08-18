#! /bin/bash

for cpu in $(seq 1 7); do
	echo 0 >/sys/devices/system/cpu/cpu$cpu/online
done

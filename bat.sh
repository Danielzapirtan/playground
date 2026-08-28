#! /bin/bash

BAT=$(/usr/bin/cat /sys/class/power_supply/BAT0/capacity)
case $BAT in
20)
	/usr/bin/echo disk >/sys/power/state
	;;
95)
	/usr/bin/echo disk >/sys/power/state
	;;
*)
	/usr/bin/date
	/usr/bin/echo "${BAT}%"
	;;
esac


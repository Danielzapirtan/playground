#! /bin/bash

PATH=/usr/local/bin:/usr/bin:/bin
BATDIR=/sys/class/power_supply/BAT0
CAP=$(cat $BATDIR/capacity)
STATUS=$(cat $BATDIR/status)

echo "$(date +%Y%m%d_%H%M%S) $CAP $STATUS" | sudo tee -a /var/log/bat.log
case $CAP in
11)
	echo $STATUS | grep -q "^Discharging$" && sudo hib
	;;
95)
	echo $STATUS | grep -q "^Charging$" && sudo hib
	;;
*)
	date
	echo "${CAP}%"
	;;
esac

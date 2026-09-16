#! /bin/bash

BAT=BAT0
START=75
STOP=80

DIR=/sys/class/power_supply/$BAT

echo "Trickle" | sudo tee $DIR/charge_types
#echo "$START" | sudo tee $DIR/charge_control_start_threshold
#echo "$STOP" | sudo tee $DIR/charge_control_end_threshold


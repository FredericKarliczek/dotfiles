#!/bin/bash

NOTIFIED=0

while true
do
	BATTERY_LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)
	STATE=$(cat /sys/class/power_supply/BAT0/status)

	# notify user of battery level
	if [ $STATE == "Discharging" ] ; then
				echo "Discharging"
		if [ $NOTIFIED -lt "1" ] && [ $BATTERY_LEVEL -lt "50" ] && [ $BATTERY_LEVEL -gt "10" ]; then
			echo "Battery >10%, < 50%"
			dunstify "Battery low warning" "Battery level is ${BATTERY_LEVEL}"
			NOTIFIED=1
		elif [ $NOTIFIED -lt "2" ] && [ $BATTERY_LEVEL -lt "11" ] && [ $BATTERY_LEVEL -gt "5" ]; then
			echo "Battery >5%, <11%"
			dunstify "Battery very low warning" "Battery level is ${BATTERY_LEVEL}% Use ac power now, or shutdown is imminent - close applications"
			NOTIFIED=2
		elif [ $NOTIFIED -lt "3" ] && [ $BATTERY_LEVEL -lt "6" ]; then
			echo "Battery <6%"
			dunstify "Battery critical warning" "Battery level is ${BATTERY_LEVEL}% Shutting system down now"
			NOTIFIED=3
		fi
		elif [ $STATE == "Charging" ]; then
			echo "Charging"
			NOTIFIED=0
	fi

	if [ $BATTERY_LEVEL -gt "60" ]; then
		echo "Battery > 60%: waiting 10 secs"
		sleep 10
	else
		echo "Battery <=60%: waiting 5 secs"
		sleep 5
	fi
done

#!/bin/bash

if [ ! -d "/sys/class/gpio/gpio22" ]
then
	echo 22 > /sys/class/gpio/export
	echo out > /sys/class/gpio/gpio22/direction
fi

while [ 1 ]
do
	echo 1 > /sys/class/gpio/gpio22/value
	sleep 1
	echo 0 > /sys/class/gpio/gpio22/value
	sleep 1
done

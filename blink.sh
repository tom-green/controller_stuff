#!/bin/bash

if [ ! -d "/sys/class/gpio/gpio7" ]
then
	echo 7 > /sys/class/gpio/export
	echo out > /sys/class/gpio/gpio7/direction
fi

if [ ! -d "/sys/class/gpio/gpio51" ]
then
	echo 51 > /sys/class/gpio/export
	echo out > /sys/class/gpio/gpio51/direction
fi

if [ ! -d "sys/class/gpio/gpio50" ]
then
	echo 50 > /sys/class/gpio/export
	echo out > /sys/class/gpio/gpio50/direction
fi

while [ 1 ]
do
	echo 1 > /sys/class/gpio/gpio7/value
	sleep 1
	echo 0 > /sys/class/gpio/gpio7/value
	sleep 1
	echo 1 > /sys/class/gpio/gpio51/value
	sleep 1
	echo 0 > /sys/class/gpio/gpio51/value
	sleep 1
	echo 1 > /sys/class/gpio/gpio50/value
	sleep 1
	echo 0 > /sys/class/gpio/gpio50/value
	sleep 1
done

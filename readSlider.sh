#!/bin/bash
echo cape-bone-iio > /sys/devices/bone_capemgr.*/slots

sleep 1

while [ 1 ]
do
  cat /sys/bus/platform/drivers/bone-iio-helper/helper*/AIN5 > /dev/null 
  cat /sys/bus/platform/drivers/bone-iio-helper/helper*/AIN5
  sleep 1
done  

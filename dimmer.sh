#!/bin/bash

echo cape-bone-iio > /sys/devices/bone_capemgr.*/slots
echo am33xx_pwm > /sys/devices/bone_capemgr.*/slots
echo bone_pwm_P9_14 > /sys/devices/bone_capemgr.*/slots
echo 20000000 > /sys/devices/ocp.*/pwm_test_P9_14.*/period


sleep 1

while [ 1 ]
do
  cat /sys/bus/platform/drivers/bone-iio-helper/helper*/AIN5 > /dev/null 
  duty=`cat /sys/bus/platform/drivers/bone-iio-helper/helper*/AIN5`
  echo $duty
  let "duty = duty * 11111"
  echo $duty > /sys/devices/ocp.*/pwm_test_P9_14.*/duty
#  sleep 1
done  

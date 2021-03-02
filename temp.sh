#!/bin/sh
monPath="/scratch/downloads/thpimon-main/pyUtil/pimon_util.py"
mon_output=$(python $monPath)
arm_rpi_boardtemp=$(echo $mon_output | awk -F'Temp:' '{print $2}'  | awk '{print $1}')

#log to a custom file
#FILE="/scratch/log/temp.log"
#echo  "`date '+%Y-%m-%d %H:%M:%S'` temp: $arm_rpi_boardtemp" >> $FILE

#log to syslog
logger "PiTemp: $arm_rpi_boardtemp"

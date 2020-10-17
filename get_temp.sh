#!/bin/bash
## Milos Mladenovic - s3656006 - RMIT - USAP Assignment 2
## This script utilises vcgencmd to record temperatures into file "kernel_performance_data"

while :
do
    temp=$(vcgencmd measure_temp | cut -d'=' -f2 | cut -d"'" -f1)
    echo "$(date +"%d-%m %H:%M:%S") $temp" >> kernel_performance_data
    sleep 30	# Records in 30 second intervals
done

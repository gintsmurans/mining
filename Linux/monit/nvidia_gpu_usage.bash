#!/bin/bash
#
# Make sure you have nvidia-smi installed, see more here: https://github.com/gintsmurans/mining/tree/master/Linux#nvidia
#
# Monit example configuration:
#
# check program GPU-Usage with path "/root/monit/gpu_usage.bash"
#    user root
#    if status < 75 then alert
#

GPUS_COUNT=`nvidia-smi -L | wc -l`
TOTAL_USAGE=0

for ((i=0; i<$GPUS_COUNT; i++)); do
    POWER_DRAW=`nvidia-smi --id=$i --query-gpu=power.draw --format=csv,noheader,nounits`
    POWER_LIMIT=`nvidia-smi --id=$i --query-gpu=power.limit --format=csv,noheader,nounits`

    POWER_PERCENTAGE=`echo "scale=2; $POWER_DRAW / $POWER_LIMIT * 100" | bc`
    POWER_PERCENTAGE=`echo "$POWER_PERCENTAGE / 1" | bc`

    TOTAL_USAGE=$(($TOTAL_USAGE+$POWER_PERCENTAGE))
#    TOTAL_USAGE=$(($TOTAL_USAGE+`nvidia-smi --id=$i --query-gpu=utilization.gpu --format=csv,noheader,nounits`))
done

AVERAGE_USAGE=$(($TOTAL_USAGE/$GPUS_COUNT))

#echo $AVERAGE_USAGE
exit $AVERAGE_USAGE

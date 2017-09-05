#!/bin/bash
#
# Make sure you have nvidia-smi installed, see more here: https://github.com/gintsmurans/mining/tree/master/Linux#nvidia
#
# Monit example configuration:
#
# check program GPU-Temp with path "/root/monit/nvidia_gpu_temp.bash"
#    user root
#    if status > 85 then alert
#

CPUT=`nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader | sort -nr | head -n1`

#echo $CPUT
exit $CPUT

#!/bin/sh
# NVidia OC
#
# Examples from:
# https://gist.github.com/bsodmike/369f8a202c5a5c97cfbd481264d549e9
#
# To run it, I do it this way:
# nano /etc/cron.d/system
# @reboot root sleep 60 && /root/nvidia_oc.sh
# Ctrl + X -> y -> Enter
#

# Start X
X :1 &
export DISPLAY=:1


# debug power
#nvidia-smi -i 0 -q -d power

# card status
#nvidia-smi


# Set persistence mode
nvidia-smi -pm 1

# Reduce power
# nvidia-smi -i 0 -pl 230


# OC
# These are safe values for 1070 cards
nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=75 -a [gpu:0]/GPUPowerMizerMode=1 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=500 -a [gpu:0]/GPUGraphicsClockOffset[3]=50
nvidia-settings -a [gpu:1]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=75 -a [gpu:1]/GPUPowerMizerMode=1 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=500 -a [gpu:1]/GPUGraphicsClockOffset[3]=50
nvidia-settings -a [gpu:2]/GPUFanControlState=1 -a [fan:2]/GPUTargetFanSpeed=65 -a [gpu:2]/GPUPowerMizerMode=1 -a [gpu:2]/GPUMemoryTransferRateOffset[3]=200 -a [gpu:2]/GPUGraphicsClockOffset[3]=20
nvidia-settings -a [gpu:3]/GPUFanControlState=1 -a [fan:3]/GPUTargetFanSpeed=75 -a [gpu:3]/GPUPowerMizerMode=1 -a [gpu:3]/GPUMemoryTransferRateOffset[3]=500 -a [gpu:3]/GPUGraphicsClockOffset[3]=50


# Stop X, Commented out, because for some reason by killing X, hashrate just drops to close to zero.
# pkill X

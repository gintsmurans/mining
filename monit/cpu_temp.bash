#!/bin/bash
#
# Make sure you have sensors installed.
# Debian:
#   apt-get install lm-sensors
#   sensors-detect
#
# Monit example configuration:
#
# check program CPU-Temp with path "/root/monit/cpu_temp.bash"
#    user root
#    if status > 60 then alert
#

VALUE=`sensors -u | sed -n 's/.*_input: //p' | awk '{print int($1)}' | sort -nr | head -n1`

# echo $VALUE
exit $VALUE

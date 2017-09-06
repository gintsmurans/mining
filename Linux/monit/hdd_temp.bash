#!/bin/bash
#
# Make sure you have hddtemp installed.
# Debian:
#   apt-get install hddtemp
#
# Monit example configuration:
# check program HDD-Temp with path "/root/monit/hdd_temp.bash"
#    user root
#    if status > 50 then alert
#

CPUT=`hddtemp -n /dev/sda`

#echo $CPUT
exit $CPUT

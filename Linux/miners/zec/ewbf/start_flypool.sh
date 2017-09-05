#!/bin/sh
#
# Monit example:
# check process nicehash matching "^./miner --server eu1-zcash.flypool.org"
#    if does not exist then alert
#

screen -dmS flypool sh -c './miner --server eu1-zcash.flypool.org --port 3333 --user t1UrvDwjLoyVsxuP5eUaetPEDkb6JtfiHXu.W1 --pass x --templimit 85 --tempunits C --fee 1 --cuda_devices 1; exec bash'

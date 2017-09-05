#!/bin/sh
#
# Monit example:
# check process nicehash matching "^./miner --server zec-eu1.dwarfpool.com"
#    if does not exist then alert
#
# To see the progress of miner:
# screen -r dwarf
#

screen -dmS dwarf sh -c './miner --server zec-eu1.dwarfpool.com --port 3336 --user t1KAUPxYgFYY35Nfq4z57QRaoTUoywZ9fzA.W1 --pass gm@gm.lv --templimit 85 --tempunits C --fee 1 --cuda_devices 0 1 2 3; exec bash'

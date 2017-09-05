#!/bin/sh
#
# Monit example:
# check process nicehash matching "^./miner --server ec-eu1.nanopool.org"
#    if does not exist then alert
#
# To see the progress of miner:
# screen -r nanopool
#

screen -dmS nanopool sh -c './miner --server zec-eu1.nanopool.org --user t1KAUPxYgFYY35Nfq4z57QRaoTUoywZ9fzA.W1/gm@gm.lv --pass z --port 6666 --templimit 85 --tempunits C --fee 1 --cuda_devices 0 1 2 3; exec bash'

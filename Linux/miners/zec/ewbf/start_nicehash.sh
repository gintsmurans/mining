#!/bin/sh
#
# Monit example:
# check process nicehash matching "^./miner --server equihash.eu.nicehash.com"
#    if does not exist then alert
#
# To see the progress of miner:
# screen -r nicehash
#

screen -dmS nicehash sh -c './miner --server equihash.eu.nicehash.com --port 3357 --user 1GLSrjmdinsrWQdm2DjkkpMtakUvFAL7Vn --pass x --templimit 85 --tempunits C --pec --fee 1 --cuda_devices 0 1 2 3; exec bash'

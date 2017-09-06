#!/bin/bash
#
# Make sure you have screen installed
# Debian:
# apt-get install screen
#
# Monit example:
# check process ssh-tunnel matching "^ssh -N sshtunnel"
#    user root
#    start program = "/root/ssh_tunnel.sh"
#    if does not exist then start
#
# See ~/.ssh/config for ssh-tunel
# Example:
# nano ~/.ssh/config
# Host sshtunnel
#      HostName [hostname]
#      User root
#      ServerAliveInterval 15
#      ServerAliveCountMax 3
#
#      RemoteForward 0.0.0.0:2201 localhost:22
#


screen -dmS ssh-tunnel ssh -N sshtunnel

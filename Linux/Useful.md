# Useful stuff

## nvidia-smi monitoring

*On the server:*

Start screen session

    screen -dmS smi

Add same in crontab to run on reboot

    nano /etc/cron.d/system
    @reboot root sleep 20 && screen -dmS smi
    Ctrl + x -> y -> Enter

Join the session and run nvidia-smi to refresh each 5 minutes

    screen -r smi
    watch -n 300 nvidia-smi

*OSX:*

Edit .bash_profile to add an alias for ssh connection that will join smi screen session

    nano ~/.bash_profile
    alias sshbtc1="ssh -t root@[HOSTNAME] -p [PORT] screen -r smi"
    Ctrl + x -> y -> Enter

Close Terminal, open it again, and run alias, and it should lead you right to the screen session. To get out of it without closing, press Ctrl + a and then d.

    sshbtc1

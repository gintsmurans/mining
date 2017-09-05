# Mining


## Nvidia
####Debian 
1. By running .run file from nvidia:
Download .run file from here: http://www.nvidia.com/object/unix.html, for example: 

    wget http://us.download.nvidia.com/XFree86/Linux-x86_64/384.69/NVIDIA-Linux-x86_64-384.69.run
    chmod 755 NVIDIA-Linux-x86_64-384.69.run
    ./NVIDIA-Linux-x86_64-384.69.run
        
Follow instructions. If for some reason nvidia installer didn't disable nouveau, but dmesg shows errors do this:

    nano /etc/modprobe.d/nvidia-blacklists-nouveau.conf
    blacklist nouveau
    Ctrl + X -> y -> Enter

2. Using apt-get

        apt-get install nvidia-driver nvidia-smi nvidia-xconfig nvidia-cuda-toolkit


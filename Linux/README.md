# Nvidia

### Debian

Two ways to install nvidia drivers:
* Using apt-get - you will not get the latest drivers, but its a lot easier.

      apt-get install nvidia-driver nvidia-smi nvidia-xconfig nvidia-cuda-toolkit
* Our download .run file from here: http://www.nvidia.com/object/unix.html:

      wget http://us.download.nvidia.com/XFree86/Linux-x86_64/384.69/NVIDIA-Linux-x86_64-384.69.run
      chmod 755 NVIDIA-Linux-x86_64-384.69.run
      ./NVIDIA-Linux-x86_64-384.69.run

Follow instructions. If for some reason nvidia installer didn't disable nouveau, but dmesg shows errors do this:

    nano /etc/modprobe.d/nvidia-blacklists-nouveau.conf
    blacklist nouveau
    Ctrl + X -> y -> Enter

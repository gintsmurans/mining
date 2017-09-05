Ccminer compilation on Debian Stretch is not straight forward, so here are few instruction that worked for me.

Install libssl1.0-dev NOT libssl-dev:

    apt-get install libssl1.0-dev

Also you will need gcc-5, which is available in unstable: 

    nano /etc/apt/sources.list

    # Unstable
    deb http://debian.linux.edu.lv/debian/ sid main contrib non-free
    deb-src http://debian.linux.edu.lv/debian/ sid main contrib non-free

    apt-get update
    apt-get install gcc-5/unstable g++-5/unstable


To NOT mess up the system it is suggested to setup package pinning:

    nano /etc/apt/preferences.d/dist.pref

    Package: *
    Pin: release l=Debian-Security
    Pin-Priority: 1000


    Package: *
    Pin: release a=stable
    Pin-Priority: 900


    Package: *
    Pin: release a=testing
    Pin-Priority: 750


    Package: *
    Pin: release a=unstable
    Pin-Priority: -1


    Package: *
    Pin: release a=experimental
    Pin-Priority: -1

Run ./build.sh. 

If it complains something about "relocation R_X86_64_32 against symbol XXXX can not be used when making a shared object":

    nano Makefile
    
    find "CFLAGS" and add -fPIC
    find "nvcc_FLAGS" and add --compiler-options '-fPIC' --shared
    find al occurrences of "$(NVCC) $(JANSSON_INCLUDES)" and add --compiler-options '-fPIC' --shared

    make clean && make


That should do it.


armv8m-hello
---

Prerequisites
---

* OS: 
ubuntu 18.04

```
sudo apt-get install git
sudo apt-get install python
```

* gcc linaro toolchain (armv8l-linux-gnueabihf):
download [gcc-linaro-7.3.1-2018.04-rc1-x86_64_armv8l-linux-gnueabihf](http://snapshots.linaro.org/components/toolchain/binaries/7.3-2018.04-rc1/armv8l-linux-gnueabihf/) and extract into the project directory.

* build qemu

```
$ git clone https://github.com/qemu/qemu.git
$ cd qemu	
$ mkdir build
$ cd build
$ ../configure --enable-debug
$ make
$ make install
```

inspect mps2-an505 by using qemu-system-arm after building completely qemu

```
$ qemu-system-arm -machine help
```

Quickly Started
---

* run
```
$ cd armv8m-hello
$ make
$ make qemu
```

* debug qemu with kernel.elf

```
$ make
$ make gdbqemu
```

* debug kernel.elf in qemu

a terminal for the gdb server
```
$ make
$ make gdbserver
```

a terminal for gdb

```
$ make gdb
```









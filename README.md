
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
but now here is a problem reqiured to slove.
```
qemu-system-arm -machine mps2-an505 -cpu cortex-m33 \
                    -m 4096 \
		    -nographic -serial mon:stdio \
                    -kernel kernel.elf \
		   
qemu: fatal: Lockup: can't escalate 3 to HardFault (current priority -1)

R00=00000000 R01=00000000 R02=00000000 R03=00000000
R04=00000000 R05=00000000 R06=00000000 R07=00000000
R08=00000000 R09=00000000 R10=00000000 R11=00000000
R12=00000000 R13=100fffe0 R14=fffffff9 R15=00000000
XPSR=40000003 -Z-- A S handler
FPSCR: 00000000
makefile:27: recipe for target 'qemu' failed
make: *** [qemu] Aborted (core dumped)

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
$ make qemugdbserver
```

a terminal for gdb

```
$ make gdb
```









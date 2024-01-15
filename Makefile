KERNAL_DIR ?= /home/zhengsongyan/linux/linux-5.10/
PWD :=$(shell pwd)
obj-m := chardevbase.o

build: kernel_modules

kernel_modules:
	$(MAKE) -C $(KERNAL_DIR) M=$(PWD) modules
clean:
	$(MAKE) -C $(KERNAL_DIR) M=$(PWD) clean


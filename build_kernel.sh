#!/bin/bash
## Milos Mladenovic - s3656006 - RMIT - USAP Assignment 2
## Device used for the project was my Raspberry Pi 3+ (Plus)

# Install Prerequisite Packages
sudo apt install raspberrypi-kernel-headers build-essential bc git wget bison flex libssl-dev make

# Get Kernel Source Code
git clone --depth=1 https://github.com/raspberrypi/linux

# SSH My Assignment Repository
git clone git@github.com:milucid/usap_a2.git

# Generate Kernel Configuration
cd linux || exit
KERNEL=kernel7
make bcm2709_defconfig 
CONFIG_LOCALVERSION="-v7-s3656006"
echo $CONFIG_LOCALVERSION
## If you're using a Raspberry Pi 4, replace above values with these: 
#KERNEL=kernel7l
#make bcm2711_defconfig

# Compile Kernel Source Code
make -j4 zImage modules dtbs

# Copy the Files to their final destination
sudo make modules_install
sudo cp arch/arm/boot/dts/*.dtb /boot/
sudo cp arch/arm/boot/dts/overlays/*.dtb* /boot/overlays/
sudo cp arch/arm/boot/dts/overlays/README /boot/overlays/
sudo cp arch/arm/boot/zImage /boot/$KERNEL.img

# Completion Message and Reboot
echo "Kernel build script has been completed, device will reboot to run new kernel."
sudo reboot

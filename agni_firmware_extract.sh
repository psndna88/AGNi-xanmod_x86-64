#!/bin/bash

# Extract and force Qualcomm QCA9377 old firmware
if [ ! -f /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin.orig ];then             
	echo " Replacing Qualcomm QCA9377 WiFi firmware with the recomended version.."
	mv -f /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin.orig
	mv -f /lib/firmware/ath10k/QCA9377/hw1.0/firmware-6.bin /lib/firmware/ath10k/QCA9377/hw1.0/firmware-6.bin.orig
	mv -f /lib/firmware/ath10k/QCA9377/hw1.0/firmware-sdio-5.bin /lib/firmware/ath10k/QCA9377/hw1.0/firmware-sdio-5.bin.orig
	if [ -f firmware-5.bin.wlan ];then
		mv -f firmware-5.bin.wlan /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin
	else
		mv -f scripts/package/firmware/ath10k/qca9377/firmware-5.bin.wlan /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin
	fi
	chmod 0777 /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin
else
	echo " Qualcomm QCA9377 WiFi firmware is the recomended version.."
fi


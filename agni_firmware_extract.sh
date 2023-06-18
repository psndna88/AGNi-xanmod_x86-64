#!/bin/bash

# Extract and force Qualcomm QCA9377 old firmware
if [ -f /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin ];then
	if [ ! -f /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin.orig ];then             
		echo " Replacing Qualcomm QCA9377 WiFi firmware with the recomended version.."
		mv -f /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin.orig
		mv -f /lib/firmware/ath10k/QCA9377/hw1.0/firmware-6.bin /lib/firmware/ath10k/QCA9377/hw1.0/firmware-6.bin.orig
		mv -f /lib/firmware/ath10k/QCA9377/hw1.0/firmware-sdio-5.bin /lib/firmware/ath10k/QCA9377/hw1.0/firmware-sdio-5.bin.orig
		if [ -f firmware-5.bin.wlan ];then
			cp -f firmware-5.bin.wlan /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin
		else
			cp -f scripts/package/firmware/ath10k/qca9377/firmware-5.bin.wlan /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin
		fi
		chmod 0777 /lib/firmware/ath10k/QCA9377/hw1.0/firmware-5.bin
	else
		echo " Qualcomm QCA9377 WiFi firmware is the recomended version.."
	fi
fi

# Extract and force Realtek RTL8188FU USB WiFi firmware
if [ ! -f /lib/firmware/rtlwifi/rtl8188fufw.bin ];then             
	echo " Installing RTL8188FU firmware.."
	if [ -f rtl8188fufw.bin.wlan ];then
		cp -f rtl8188fufw.bin.wlan /lib/firmware/rtlwifi/rtl8188fufw.bin
	else
		cp -f scripts/package/firmware/rtl8188fu/rtl8188fufw.bin.wlan /lib/firmware/rtlwifi/rtl8188fufw.bin
	fi
	chmod 0777 /lib/firmware/rtlwifi/rtl8188fufw.bin
else
	echo " Realtek RTL8188FU USB WiFi firmware installed."
fi


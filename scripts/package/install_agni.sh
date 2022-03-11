#!/bin/bash

EXTRACTDIR=`readlink -f .`

if [ "$UID" -eq 0 ]; then
	if ([ -f $EXTRACTDIR/linux-headers*.deb ] && [ -f $EXTRACTDIR/linux-image*.deb ] && [ -f $EXTRACTDIR/linux-libc*.deb ]); then
		echo "Installing AGNi-xanmod kernel...."
		dpkg -i $EXTRACTDIR/*.deb
		./agni_firmware_extract.sh
	fi
else
	echo "Please attempt to install with superuser/admin rights (sudo/su)"
fi
echo ""


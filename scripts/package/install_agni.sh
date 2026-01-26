#!/bin/bash

EXTRACTDIR=`readlink -f .`

if [ "$UID" -eq 0 ]; then
		echo "Installing AGNi-xanmod kernel...."
		dpkg -i $EXTRACTDIR/*.deb
else
	echo "Please attempt to install with superuser/admin rights (sudo/su)"
fi
echo ""


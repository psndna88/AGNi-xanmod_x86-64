#!/bin/bash
export ARCH=x86
export SUBARCH=x86
export BUILDJOBS=8

KERNELDIR=`readlink -f .`

DEVICE="x86"
CONFIG="agni_zen2_config"
SYNC_CONFIG=1
export AGNI_BUILD_TYPE="Ryzen5_zen2_x86-64"

. $KERNELDIR/AGNi_version.sh

if [ -f ~/WORKING_DIRECTORY/AGNi_stamp.sh ]; then
	. ~/WORKING_DIRECTORY/AGNi_stamp.sh
fi

if [ -d $BUILT_EXPORT ]; then
	READY_ZIP="$BUILT_EXPORT"
else
	mkdir -p $READY_ZIP 2>/dev/null
	READY_ZIP="$KERNELDIR/READY_DIR"
fi;

echo ""
echo " ~~~~~ Cross-compiling AGNi kernel x86-64 ~~~~~"
echo "         VERSION: AGNi $AGNI_VERSION $AGNI_BUILD_TYPE"
echo ""

. $KERNELDIR/cleanbuild.sh

cp -f $KERNELDIR/CONFIGS/agni-xanmod/$CONFIG $KERNELDIR/.config
make -j$BUILDJOBS deb-pkg

if [ $SYNC_CONFIG -eq 1 ]; then # SYNC CONFIG
	cp -f $KERNELDIR/.config $KERNELDIR/CONFIGS/agni-xanmod/$CONFIG
fi
rm $KERNELDIR/.config $KERNELDIR/.config.old 2>/dev/null

if ([ -f $KERNELDIR/../linux-headers*.deb ] && [ -f $KERNELDIR/../linux-image*.deb ] && [ -f $KERNELDIR/../linux-libc*.deb ]); then
	mv -f $KERNELDIR/../linux*.deb $READY_ZIP/
else
	echo "         ERROR: compiling AGNi kernel $DEVICE."
fi

echo ""


#!/bin/bash
export ARCH=x86
export SUBARCH=x86
export BUILDJOBS=8

KERNELDIR=`readlink -f .`

DEVICE="x86"
CONFIG="agni_zen2_config"
SYNC_CONFIG=1
export AGNI_BUILD_TYPE="amd_zen2_x86-64"

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
echo " ~~~~~ Cross-compiling AGNi kernel $AGNI_KERNEL_LINUX ~~~~~"
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
	cd $KERNELDIR
	rm -rf $KERNELDIR/DEB_TEMP 2>/dev/null
	mkdir $KERNELDIR/DEB_TEMP
	mv -f $KERNELDIR/../linux*.deb $KERNELDIR/DEB_TEMP/
	cp -f scripts/package/install_agni.sh $KERNELDIR/DEB_TEMP/
	cp -f agni_firmware_extract.sh $KERNELDIR/DEB_TEMP/
	cp -f scripts/package/firmware/ath10k/qca9377/firmware-5.bin.wlan $KERNELDIR/DEB_TEMP/
	chmod +x $KERNELDIR/DEB_TEMP/agni_firmware_extract.sh
	chmod +x $KERNELDIR/DEB_TEMP/install_agni.sh
	makeself --gzip --threads $BUILDJOBS --needroot --nomd5 --nocrc --quiet $KERNELDIR/DEB_TEMP/ AGNi-xanmod-kernel-$AGNI_VERSION-debian-$AGNI_KERNEL_LINUX-$AGNI_BUILD_TYPE.run AGNi_kernel_x86-64 ./install_agni.sh
	rm -rf $KERNELDIR/DEB_TEMP 2>/dev/null
	touch $KERNELDIR/AGNi-xanmod-kernel-$AGNI_VERSION-debian-$AGNI_KERNEL_LINUX-$AGNI_BUILD_TYPE.md5
	echo "`md5sum AGNi-xanmod-kernel*.run`" > $KERNELDIR/AGNi-xanmod-kernel-$AGNI_VERSION-debian-$AGNI_KERNEL_LINUX-$AGNI_BUILD_TYPE.md5
	mv -f $KERNELDIR/AGNi-xanmod-kernel-$AGNI_VERSION-debian-$AGNI_KERNEL_LINUX-$AGNI_BUILD_TYPE* $READY_ZIP/
else
	echo "         ERROR: compiling AGNi kernel $DEVICE."
fi

echo ""


#!/bin/bash
export ARCH=x86
export SUBARCH=x86

KERNELDIR=`readlink -f .`

DEVICE="x86"
CONFIG="agni_generic_config"
SYNC_CONFIG=1
export AGNI_BUILD_TYPE="mptcpv0-generic_x86-64"

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

cp -f $KERNELDIR/CONFIGS/agni/$CONFIG $KERNELDIR/.config
make -j`nproc --ignore=2` deb-pkg

if [ $SYNC_CONFIG -eq 1 ]; then # SYNC CONFIG
	cp -f $KERNELDIR/.config $KERNELDIR/CONFIGS/agni/$CONFIG
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
	cp -f scripts/package/eoip_tool/eoip $KERNELDIR/DEB_TEMP/
	chmod +x $KERNELDIR/DEB_TEMP/agni_firmware_extract.sh
	chmod +x $KERNELDIR/DEB_TEMP/install_agni.sh
	makeself --gzip --threads $BUILDJOBS --needroot --nomd5 --nocrc --quiet $KERNELDIR/DEB_TEMP/ AGNi-kernel-$AGNI_VERSION-debian-$AGNI_KERNEL_LINUX-$AGNI_BUILD_TYPE.run AGNi_kernel_x86-64 ./install_agni.sh
	rm -rf $KERNELDIR/DEB_TEMP 2>/dev/null
	touch $KERNELDIR/AGNi-kernel-$AGNI_VERSION-debian-$AGNI_KERNEL_LINUX-$AGNI_BUILD_TYPE.md5
	echo "`md5sum AGNi-kernel*.run`" > $KERNELDIR/AGNi-kernel-$AGNI_VERSION-debian-$AGNI_KERNEL_LINUX-$AGNI_BUILD_TYPE.md5
	mv -f $KERNELDIR/AGNi-kernel-$AGNI_VERSION-debian-$AGNI_KERNEL_LINUX-$AGNI_BUILD_TYPE* $READY_ZIP/
else
	echo "         ERROR: compiling AGNi kernel $DEVICE."
fi

echo ""


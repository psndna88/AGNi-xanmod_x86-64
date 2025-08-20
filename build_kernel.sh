#!/bin/bash
export ARCH=x86
export SUBARCH=x86

KERNELDIR=`readlink -f .`

echo " "
echo " 1: generic         x86-64 build"
echo " 2: amd zen2        x86-64 build"
echo " 3: intel ivybridge    x86-64 build"
echo " 4: intel westmere     x86-64 build"
echo " 5: intel broadwell    x86-64 build"
echo " 6: intel alderlake    x86-64 build"
echo " 7: ALL VARIANTS    build all listed variants"
echo " "
echo " 0:  X  Exit Compilation  X"
echo " "
read -p "    Select type of config : " choice

# Define arrays for configurations and build types
declare -a CONFIGS
declare -a BUILD_TYPES

if [ $choice -eq 1 ]; then
    CONFIGS=("agni_generic_config")
    BUILD_TYPES=("generic-x86-64")
elif [ $choice -eq 2 ]; then
    CONFIGS=("agni_zen2_config")
    BUILD_TYPES=("zen2-x86-64")
elif [ $choice -eq 3 ]; then
    CONFIGS=("agni_ivybridge_config")
    BUILD_TYPES=("ivybridge-x86-64")
elif [ $choice -eq 4 ]; then
    CONFIGS=("agni_westmere_config")
    BUILD_TYPES=("westmere-x86-64")
elif [ $choice -eq 5 ]; then
    CONFIGS=("agni_broadwell_config")
    BUILD_TYPES=("broadwell-x86-64")
elif [ $choice -eq 6 ]; then
    CONFIGS=("agni_alderlake_config")
    BUILD_TYPES=("alderlake-x86-64")
elif [ $choice -eq 7 ]; then
    CONFIGS=("agni_generic_config" "agni_zen2_config" "agni_ivybridge_config" "agni_westmere_config" "agni_broadwell_config" "agni_alderlake_config")
    BUILD_TYPES=("generic-x86-64" "zen2-x86-64" "ivybridge-x86-64" "westmere-x86-64" "broadwell-x86-64" "alderlake-x86-64")
elif [ $choice -eq 0 ]; then
    exit
else
    echo " "
    echo -e "====> Enter correct input <===="
    exit 1
fi

DEVICE="x86"
SYNC_CONFIG=1

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

# Loop through all selected configurations and build types
for i in "${!CONFIGS[@]}"; do
    CONFIG="${CONFIGS[$i]}"
    export AGNI_BUILD_TYPE="${BUILD_TYPES[$i]}"

    echo ""
    echo " ~~~~~ Compiling AGNi kernel $AGNI_KERNEL_LINUX ~~~~~"
    echo "       VERSION: AGNi $AGNI_VERSION $AGNI_BUILD_TYPE"
    echo ""

    . $KERNELDIR/cleanbuild.sh

    cp -f $KERNELDIR/CONFIGS/agni/$CONFIG $KERNELDIR/.config
    make -j`nproc --ignore=2` deb-pkg

    if [ $SYNC_CONFIG -eq 1 ]; then # SYNC CONFIG
        cp -f $KERNELDIR/.config $KERNELDIR/CONFIGS/agni/$CONFIG
    fi
    rm $KERNELDIR/.config $KERNELDIR/.config.old 2>/dev/null

    cd $KERNELDIR
    rm -rf $KERNELDIR/DEB_TEMP 2>/dev/null
    mkdir $KERNELDIR/DEB_TEMP
    mv -f $KERNELDIR/../linux*.deb $KERNELDIR/DEB_TEMP/
    cp -f scripts/package/install_agni.sh $KERNELDIR/DEB_TEMP/
    chmod +x $KERNELDIR/DEB_TEMP/install_agni.sh
    makeself --gzip --threads $BUILDJOBS --needroot --nomd5 --nocrc --quiet $KERNELDIR/DEB_TEMP/ AGNi-kernel-$AGNI_VERSION-debian-$AGNI_KERNEL_LINUX-$AGNI_BUILD_TYPE.run AGNi_kernel_x86-64 ./install_agni.sh
    rm -rf $KERNELDIR/DEB_TEMP 2>/dev/null
    mv -f $KERNELDIR/AGNi-kernel-$AGNI_VERSION-debian-$AGNI_KERNEL_LINUX-$AGNI_BUILD_TYPE* $READY_ZIP/
done

echo ""
echo "All selected kernel variants have been compiled and packaged."
echo ""

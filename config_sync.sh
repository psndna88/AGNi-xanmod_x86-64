#!/bin/bash
export KERNELDIR=`readlink -f .`

echo " "
echo " 1: generic               x86-64 build"
echo " 2: intel ivybridge     	x86-64 build"
echo " 3: intel haswell         x86-64 build"
echo " 4: intel alderlake      	x86-64 build"
echo " 0:  X  Exit Compilation  X"
echo " "
read -p "    Select type of config : " choice

if [ $choice -eq 1 ]; then
	CONFIG="agni_generic_config"
	TYPE="agni generic"
elif [ $choice -eq 2 ]; then
	CONFIG="agni_ivybridge_config"
	TYPE="agni intel ivybridge"
elif [ $choice -eq 3 ]; then
	CONFIG="agni_haswell_config"
	TYPE="agni intel haswell"
elif [ $choice -eq 4 ]; then
	CONFIG="agni_alderlake_config"
	TYPE="agni intel alderlake"
elif [ $choice -eq 0 ]; then
	exit
else
	echo " "
	echo -e "====> Enter corrent input <===="
fi

cp -f $KERNELDIR/.config $KERNELDIR/CONFIGS/agni/$CONFIG
echo "   configs saved as $TYPE!"


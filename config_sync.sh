#!/bin/bash
export KERNELDIR=`readlink -f .`

echo " "
echo " 1: generic       	x86-64 build"
#echo " 2: AMD_zen2      	x86-64 build"
#echo " 3: Intel_skylake 	x86-64 build"
#echo " 4: Intel_sandybridge 	x86-64 build"
#echo " 5: Intel_westmere 	x86-64 build"
echo " "
echo " 0:  X  Exit Compilation  X"
echo " "
read -p "    Select type of config : " choice

if [ $choice -eq 1 ]; then
	CONFIG="agni_generic_config"
	TYPE="agni generic"
#elif [ $choice -eq 2 ]; then
#	CONFIG="agni_zen2_config"
#	TYPE="agni amd-zen2"
#elif [ $choice -eq 3 ]; then
#	CONFIG="agni_skylake_config"
#	TYPE="agni intel-skylake"
#elif [ $choice -eq 4 ]; then
#	CONFIG="agni_sandybridge_config"
#	TYPE="agni intel-sandybridge"
#elif [ $choice -eq 5 ]; then
#	CONFIG="agni_westmere_config"
#	TYPE="agni intel-westmere"
elif [ $choice -eq 0 ]; then
	exit
else
	echo " "
	echo -e "====> Enter corrent input <===="
fi

cp -f $KERNELDIR/.config $KERNELDIR/CONFIGS/agni/$CONFIG
echo "   configs saved as $TYPE!"


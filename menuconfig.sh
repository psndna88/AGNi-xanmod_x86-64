#!/bin/bash
export KERNELDIR=`readlink -f .`

cd $KERNELDIR

if [ -f $KERNELDIR/.config ];
	then
	make menuconfig
else
	exit 1
fi


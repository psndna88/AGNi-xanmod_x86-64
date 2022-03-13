#!/bin/bash
export KERNELDIR=`readlink -f .`

cd $KERNELDIR
make clean
make mrproper
rm $KERNELDIR/linux*.gz 2>/dev/null
rm $KERNELDIR/../linux*.deb 2>/dev/null
rm $KERNELDIR/../linux*.gz 2>/dev/null
rm $KERNELDIR/../linux*.dsc 2>/dev/null
rm $KERNELDIR/../linux*.buildinfo 2>/dev/null
rm $KERNELDIR/../linux*.changes 2>/dev/null

echo "   Compile folder cleaned !"


#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.7.1"
export AGNI_KERNEL_LINUX="6.18.41"
sed -i 's/agni-v7.7.0/agni-v7.7.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.37 Kernel/6.18.41 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


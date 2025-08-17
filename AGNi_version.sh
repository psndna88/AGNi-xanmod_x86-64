#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.2.1"
export AGNI_KERNEL_LINUX="6.16.1"
sed -i 's/agni-v7.2.0/agni-v7.2.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.15.10 Kernel/6.16.1 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


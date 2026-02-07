#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.6.1"
export AGNI_KERNEL_LINUX="6.18.9"
sed -i 's/agni-v7.6.0/agni-v7.6.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.8 Kernel/6.18.9 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


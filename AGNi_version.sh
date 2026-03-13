#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.7.3"
export AGNI_KERNEL_LINUX="6.19.8"
sed -i 's/agni-v7.7.2/agni-v7.7.3/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.19.6 Kernel/6.19.8 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


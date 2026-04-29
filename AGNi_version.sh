#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.8.1"
export AGNI_KERNEL_LINUX="7.0.6"
sed -i 's/agni-v7.8.0/agni-v7.8.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.0.1 Kernel/7.0.6 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


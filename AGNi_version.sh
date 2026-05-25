#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.6.8"
export AGNI_KERNEL_LINUX="6.18.35"
sed -i 's/agni-v7.6.7/agni-v7.6.8/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.29 Kernel/6.18.35 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.7.0"
export AGNI_KERNEL_LINUX="6.18.37"
sed -i 's/agni-v7.6.9/agni-v7.7.0/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.35 Kernel/6.18.37 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


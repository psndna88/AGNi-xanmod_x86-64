#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.8.0"
export AGNI_KERNEL_LINUX="7.0.1"
sed -i 's/agni-v7.7.4/agni-v7.8.0/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.19.8 Kernel/7.0.1 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


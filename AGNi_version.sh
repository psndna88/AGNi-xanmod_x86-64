#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.2.3"
export AGNI_KERNEL_LINUX="6.16.2"
sed -i 's/agni-v7.2.2/agni-v7.2.3/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.16.1 Kernel/6.16.2 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


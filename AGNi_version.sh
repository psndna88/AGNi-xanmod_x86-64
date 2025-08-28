#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.3.1"
export AGNI_KERNEL_LINUX="6.16.4"
sed -i 's/agni-v7.3.0/agni-v7.3.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.16.3 Kernel/6.16.4 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


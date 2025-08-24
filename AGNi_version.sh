#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.2.4"
export AGNI_KERNEL_LINUX="6.16.3"
sed -i 's/agni-v7.2.3/agni-v7.2.4/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.16.2 Kernel/6.16.3 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


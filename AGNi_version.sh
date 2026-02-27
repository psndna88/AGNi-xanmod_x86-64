#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.6.4"
export AGNI_KERNEL_LINUX="6.18.14"
sed -i 's/agni-v7.6.3/agni-v7.6.4/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.13 Kernel/6.18.14 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


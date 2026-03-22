#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.6.7"
export AGNI_KERNEL_LINUX="6.18.29"
sed -i 's/agni-v7.6.6/agni-v7.6.7/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.16 Kernel/6.18.29 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


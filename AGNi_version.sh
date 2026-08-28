#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.7.4"
export AGNI_KERNEL_LINUX="6.18.48"
sed -i 's/agni-v7.7.3/agni-v7.7.4/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.46 Kernel/6.18.48 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


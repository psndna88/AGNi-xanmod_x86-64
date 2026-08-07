#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.9.4"
export AGNI_KERNEL_LINUX="7.1.7"
sed -i 's/agni-v7.9.3/agni-v7.9.4/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.1.6 Kernel/7.1.7 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


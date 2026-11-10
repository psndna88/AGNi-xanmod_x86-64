#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.10.4"
export AGNI_KERNEL_LINUX="7.3.3"
sed -i 's/agni-v7.10.3/agni-v7.10.4/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.2.15 Kernel/7.3.3 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


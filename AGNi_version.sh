#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.10.3"
export AGNI_KERNEL_LINUX="7.2.15"
sed -i 's/agni-v7.10.2/agni-v7.10.3/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.2.12 Kernel/7.2.15 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


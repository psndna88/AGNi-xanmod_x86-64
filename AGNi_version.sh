#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.8.3"
export AGNI_KERNEL_LINUX="7.0.14"
sed -i 's/agni-v7.8.2/agni-v7.8.3/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.0.12 Kernel/7.0.14 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.9.9"
export AGNI_KERNEL_LINUX="7.1.12"
sed -i 's/agni-v7.9.8/agni-v7.9.9/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.1.10 Kernel/7.1.12 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


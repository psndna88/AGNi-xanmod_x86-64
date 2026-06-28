#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.9.1"
export AGNI_KERNEL_LINUX="7.1.2"
sed -i 's/agni-v7.8.4/agni-v7.9.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.0.14 Kernel/7.1.2 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


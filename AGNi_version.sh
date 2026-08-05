#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.9.5"
export AGNI_KERNEL_LINUX="7.1.6"
sed -i 's/agni-v7.9.2/agni-v7.9.3/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.1.5 Kernel/7.1.6 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


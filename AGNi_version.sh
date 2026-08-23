#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.9.6"
export AGNI_KERNEL_LINUX="7.1.10"
sed -i 's/agni-v7.9.5/agni-v7.9.6/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.1.8 Kernel/7.1.10 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


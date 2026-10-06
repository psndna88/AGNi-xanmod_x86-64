#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.10.0"
export AGNI_KERNEL_LINUX="7.2.9"
sed -i 's/agni-v7.9.8/agni-v7.10.0/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.1.13 Kernel/7.2.9 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


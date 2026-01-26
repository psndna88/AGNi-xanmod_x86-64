#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.6.0"
export AGNI_KERNEL_LINUX="6.18.7"
sed -i 's/agni-v7.4.5/agni-v7.6.0/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.17.13 Kernel/6.18.7 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


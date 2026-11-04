#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.7.7"
export AGNI_KERNEL_LINUX="6.18.60"
sed -i 's/agni-v7.7.6/agni-v7.7.7/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.58 Kernel/6.18.60 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


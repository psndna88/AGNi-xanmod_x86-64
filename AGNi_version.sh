#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.7.9"
export AGNI_KERNEL_LINUX="6.18.65"
sed -i 's/agni-v7.7.8/agni-v7.7.9/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.63 Kernel/6.18.65 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


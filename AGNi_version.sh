#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.6.6"
export AGNI_KERNEL_LINUX="6.18.18"
sed -i 's/agni-v7.6.5/agni-v7.6.6/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.16 Kernel/6.18.18 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


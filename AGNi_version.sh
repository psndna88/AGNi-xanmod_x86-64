#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.7.2"
export AGNI_KERNEL_LINUX="6.19.6"
sed -i 's/agni-v7.7.1/agni-v7.7.2/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.19.5 Kernel/6.19.6 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


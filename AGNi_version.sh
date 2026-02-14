#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.6.2"
export AGNI_KERNEL_LINUX="6.18.10"
sed -i 's/agni-v7.6.1/agni-v7.6.2/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.9 Kernel/6.18.10 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


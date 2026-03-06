#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.6.5"
export AGNI_KERNEL_LINUX="6.18.16"
sed -i 's/agni-v7.6.4/agni-v7.6.5/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.18.14 Kernel/6.18.16 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


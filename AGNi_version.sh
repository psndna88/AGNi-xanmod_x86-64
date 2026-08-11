#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.9.5"
export AGNI_KERNEL_LINUX="7.1.8"
sed -i 's/agni-v7.9.4/agni-v7.9.5/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.1.7 Kernel/7.1.8 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


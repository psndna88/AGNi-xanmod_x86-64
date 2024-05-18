#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v4.1"
export AGNI_KERNEL_LINUX="6.9.1"
sed -i 's/agni-v4.0/agni-v4.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.9.0 Kernel/6.9.1 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


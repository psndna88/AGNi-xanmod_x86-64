#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v3.1"
export AGNI_KERNEL_LINUX="6.2.8"
sed -i 's/agni-v3.0/agni-v3.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.2.7 Kernel/6.2.8 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


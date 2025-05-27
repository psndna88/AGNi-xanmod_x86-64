#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.1"
export AGNI_KERNEL_LINUX="6.12.30"
sed -i 's/agni-v6.0/agni-v6.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.29 Kernel/6.12.30 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


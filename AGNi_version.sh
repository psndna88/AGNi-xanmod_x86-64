#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v4.3"
export AGNI_KERNEL_LINUX="6.9.5"
sed -i 's/agni-v4.2/agni-v4.3/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.9.2 Kernel/6.9.5 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


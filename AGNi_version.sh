#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v3.3"
export AGNI_KERNEL_LINUX="6.3.8"
sed -i 's/agni-v3.2/agni-v3.3/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.3.7 Kernel/6.3.8 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


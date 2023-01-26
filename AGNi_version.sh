#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v2.6"
export AGNI_KERNEL_LINUX="6.1.8"
sed -i 's/agni-v2.7/agni-v2.8/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.1.7 Kernel/6.1.8 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


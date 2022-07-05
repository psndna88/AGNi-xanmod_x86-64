#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v1.9"
export AGNI_KERNEL_LINUX="5.18.9"
sed -i 's/agni-v1.8/agni-v1.9/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/5.18.8 Kernel/5.18.9 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


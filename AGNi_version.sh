#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v5.9"
export AGNI_KERNEL_LINUX="6.12.28"
sed -i 's/agni-v5.8/agni-v5.9/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.24 Kernel/6.12.28 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


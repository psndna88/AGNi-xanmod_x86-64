#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.0"
export AGNI_KERNEL_LINUX="6.12.29"
sed -i 's/agni-v5.9/agni-v6.0/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.28 Kernel/6.12.29 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.10"
export AGNI_KERNEL_LINUX="6.12.48"
sed -i 's/agni-v6.9/agni-v6.10/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.46 Kernel/6.12.48 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


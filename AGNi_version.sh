#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.9"
export AGNI_KERNEL_LINUX="6.12.46"
sed -i 's/agni-v6.8/agni-v6.9/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.45 Kernel/6.12.46 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


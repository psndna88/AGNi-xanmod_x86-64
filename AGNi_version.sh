#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.13.9"
export AGNI_KERNEL_LINUX="6.12.107"
sed -i 's/agni-v6.13.8/agni-v6.13.9/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.102 Kernel/6.12.107 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


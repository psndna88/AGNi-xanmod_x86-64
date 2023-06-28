#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v3.4"
export AGNI_KERNEL_LINUX="6.3.10"
sed -i 's/agni-v3.3/agni-v3.4/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.3.9 Kernel/6.3.10 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


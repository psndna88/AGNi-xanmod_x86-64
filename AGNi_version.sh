#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v4.4"
export AGNI_KERNEL_LINUX="6.9.9"
sed -i 's/agni-v4.3/agni-v4.4/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.9.5 Kernel/6.9.9 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


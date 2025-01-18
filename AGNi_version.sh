#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v5.4"
export AGNI_KERNEL_LINUX="6.12.10"
sed -i 's/agni-v5.3/agni-v5.4/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.6 Kernel/6.12.10 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


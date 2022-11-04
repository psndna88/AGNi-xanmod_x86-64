#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v2.4"
export AGNI_KERNEL_LINUX="6.0.7"
sed -i 's/agni-v2.3/agni-v2.4/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.0.6 Kernel/6.0.7 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v3.0"
export AGNI_KERNEL_LINUX="6.2.5"
sed -i 's/agni-v2.9/agni-v3.0/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.2.2 Kernel/6.2.5 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


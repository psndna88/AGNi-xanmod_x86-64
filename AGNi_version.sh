#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v3.9"
export AGNI_KERNEL_LINUX="6.5.6"
sed -i 's/agni-v3.8/agni-v3.9/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.5.5 Kernel/6.5.6 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


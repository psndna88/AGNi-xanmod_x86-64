#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v2.1"
export AGNI_KERNEL_LINUX="5.18.15"
sed -i 's/agni-v2.0/agni-v2.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/5.18.11 Kernel/5.18.15 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


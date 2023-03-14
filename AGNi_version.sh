#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v3.1"
export AGNI_KERNEL_LINUX="6.2.6"
sed -i 's/agni-v3.0/agni-v3.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.2.5 Kernel/6.2.6 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


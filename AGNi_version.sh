#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v4.8"
export AGNI_KERNEL_LINUX="6.11.1"
sed -i 's/agni-v4.7/agni-v4.8/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.10.12 Kernel/6.11.1 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.9.4"
export AGNI_KERNEL_LINUX="7.1.5"
sed -i 's/agni-v7.9.1/agni-v7.9.2/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.1.2 Kernel/7.1.5 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.3.2"
export AGNI_KERNEL_LINUX="6.16.5"
sed -i 's/agni-v7.3.1/agni-v7.3.2/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.16.4 Kernel/6.16.5 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


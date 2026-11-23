#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v7.10.6"
export AGNI_KERNEL_LINUX="7.3.6"
sed -i 's/agni-v7.10.5/agni-v7.10.6/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/7.3.4 Kernel/7.3.6 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


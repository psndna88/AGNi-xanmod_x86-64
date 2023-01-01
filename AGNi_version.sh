#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v2.6"
export AGNI_KERNEL_LINUX="6.1.2"
sed -i 's/agni-v2.5/agni-v2.6/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.1.1 Kernel/6.1.2 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


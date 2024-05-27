#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v4.2"
export AGNI_KERNEL_LINUX="6.9.2"
sed -i 's/agni-v4.1/agni-v4.2/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.9.1 Kernel/6.9.2 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


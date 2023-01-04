#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v2.6"
export AGNI_KERNEL_LINUX="6.1.3"
sed -i 's/agni-v2.6/agni-v2.7/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.1.2 Kernel/6.1.3 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


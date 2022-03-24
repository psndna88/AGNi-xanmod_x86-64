#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v1.4"
export AGNI_KERNEL_LINUX="5.16.17"
sed -i 's/agni-v1.3/agni-v1.4/' $KERNELDIR/CONFIGS/agni-xanmod/agni*config
sed -i 's/5.16.16 Kernel/5.16.17 Kernel/' $KERNELDIR/CONFIGS/agni-xanmod/agni*config

echo "	AGNi Version info loaded."


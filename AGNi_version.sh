#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v1.4"
export AGNI_KERNEL_LINUX="5.17.1"
sed -i 's/agni-v1.3/agni-v1.4/' $KERNELDIR/CONFIGS/agni-xanmod/agni*config
sed -i 's/5.17.0 Kernel/5.17.1 Kernel/' $KERNELDIR/CONFIGS/agni-xanmod/agni*config

echo "	AGNi Version info loaded."


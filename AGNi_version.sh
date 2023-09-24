#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v3.8"
export AGNI_KERNEL_LINUX="6.5.5"
sed -i 's/agni-v3.7/agni-v3.8/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.5.4 Kernel/6.5.5 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


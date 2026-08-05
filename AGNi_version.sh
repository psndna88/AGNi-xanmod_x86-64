#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.13.8"
export AGNI_KERNEL_LINUX="6.12.102"
sed -i 's/agni-v6.13.7/agni-v6.13.8/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.100 Kernel/6.12.102 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


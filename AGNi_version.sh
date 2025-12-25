#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.13.1"
export AGNI_KERNEL_LINUX="6.12.63"
sed -i 's/agni-v6.13.0/agni-v6.13.1/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.57 Kernel/6.12.63 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


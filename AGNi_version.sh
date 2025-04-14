#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v5.7"
export AGNI_KERNEL_LINUX="6.12.23"
sed -i 's/agni-v5.5/agni-v5.7/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.21 Kernel/6.12.23 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


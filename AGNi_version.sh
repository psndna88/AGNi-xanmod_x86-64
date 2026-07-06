#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.13.7"
export AGNI_KERNEL_LINUX="6.12.100"
sed -i 's/agni-v6.13.6/agni-v6.13.7/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.94 Kernel/6.12.100 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


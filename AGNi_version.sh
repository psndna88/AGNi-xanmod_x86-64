#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.13.4"
export AGNI_KERNEL_LINUX="6.12.87"
sed -i 's/agni-v6.13.3/agni-v6.13.4/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.67 Kernel/6.12.87 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


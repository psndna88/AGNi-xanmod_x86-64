#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.13.3"
export AGNI_KERNEL_LINUX="6.12.74"
sed -i 's/agni-v6.13.2/agni-v6.13.3/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.67 Kernel/6.12.74 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


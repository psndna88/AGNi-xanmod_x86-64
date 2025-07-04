#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.3"
export AGNI_KERNEL_LINUX="6.12.35"
sed -i 's/agni-v6.2/agni-v6.3/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.33 Kernel/6.12.35 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v5.3"
export AGNI_KERNEL_LINUX="6.12.6"
sed -i 's/agni-v5.2/agni-v5.3/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.11.11 Kernel/6.12.6 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


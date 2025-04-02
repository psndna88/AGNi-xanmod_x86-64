#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v5.6"
export AGNI_KERNEL_LINUX="6.12.21"
sed -i 's/agni-v5.5/agni-v5.6/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.12 Kernel/6.12.21 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


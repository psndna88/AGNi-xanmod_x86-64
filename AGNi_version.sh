#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.8"
export AGNI_KERNEL_LINUX="6.12.45"
sed -i 's/agni-v6.7/agni-v6.8/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.44 Kernel/6.12.45 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


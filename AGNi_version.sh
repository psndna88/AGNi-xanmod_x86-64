#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v5.5"
export AGNI_KERNEL_LINUX="6.12.12"
sed -i 's/agni-v5.4/agni-v5.5/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.10 Kernel/6.12.12 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


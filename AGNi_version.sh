#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v2.4"
export AGNI_KERNEL_LINUX="6.0.10"
sed -i 's/agni-v2.4/agni-v2.5/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.0.9 Kernel/6.0.10 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


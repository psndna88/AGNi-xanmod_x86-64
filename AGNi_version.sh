#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v3.5"
export AGNI_KERNEL_LINUX="6.4.8"
sed -i 's/agni-v3.4/agni-v3.5/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.3.10 Kernel/6.4.8 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


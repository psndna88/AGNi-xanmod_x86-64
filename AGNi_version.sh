#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v3.7"
export AGNI_KERNEL_LINUX="6.4.14"
sed -i 's/agni-v3.6/agni-v3.7/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.4.11 Kernel/6.4.14 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


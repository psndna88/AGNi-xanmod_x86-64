#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v4.7"
export AGNI_KERNEL_LINUX="6.10.11"
sed -i 's/agni-v4.6/agni-v4.7/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.10.6 Kernel/6.10.11 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


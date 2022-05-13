#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v1.3"
export AGNI_KERNEL_LINUX="5.4.195"
sed -i 's/agni-v1.2/agni-v1.3/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/5.4.193 Kernel/5.4.195 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


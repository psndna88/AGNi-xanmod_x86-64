#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v1.5"
export AGNI_KERNEL_LINUX="5.18.3"
sed -i 's/agni-v1.4/agni-v1.5/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/5.18.2 Kernel/5.18.3 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v2.0"
export AGNI_KERNEL_LINUX="5.18.11"
sed -i 's/agni-v1.9/agni-v2.0/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/5.18.10 Kernel/5.18.11 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


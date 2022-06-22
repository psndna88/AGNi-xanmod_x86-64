#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v1.6"
export AGNI_KERNEL_LINUX="5.18.6"
sed -i 's/agni-v1.5/agni-v1.6/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/5.18.4 Kernel/5.18.6 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


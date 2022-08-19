#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v2.2"
export AGNI_KERNEL_LINUX="5.18.18"
sed -i 's/agni-v2.1/agni-v2.2/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/5.18.15 Kernel/5.18.18 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


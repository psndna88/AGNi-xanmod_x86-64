#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v3.2"
export AGNI_KERNEL_LINUX="6.2.16"
sed -i 's/agni-v3.1/agni-v3.2/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.2.14 Kernel/6.2.16 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


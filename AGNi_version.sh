#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v3.6"
export AGNI_KERNEL_LINUX="6.4.11"
sed -i 's/agni-v3.5/agni-v3.6/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.4.8 Kernel/6.4.11 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


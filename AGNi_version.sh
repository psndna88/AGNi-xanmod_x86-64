#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.7"
export AGNI_KERNEL_LINUX="6.12.44"
sed -i 's/agni-v6.6/agni-v6.7/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.43 Kernel/6.12.44 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


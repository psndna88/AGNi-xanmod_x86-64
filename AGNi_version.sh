#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.11"
export AGNI_KERNEL_LINUX="6.12.49"
sed -i 's/agni-v6.10/agni-v6.11/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.48 Kernel/6.12.49 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


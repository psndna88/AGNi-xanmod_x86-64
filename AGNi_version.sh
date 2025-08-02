#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.5"
export AGNI_KERNEL_LINUX="6.12.41"
sed -i 's/agni-v6.4/agni-v6.5/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.39 Kernel/6.12.41 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


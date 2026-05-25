#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.13.5"
export AGNI_KERNEL_LINUX="6.12.91"
sed -i 's/agni-v6.13.4/agni-v6.13.5/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.87 Kernel/6.12.91 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


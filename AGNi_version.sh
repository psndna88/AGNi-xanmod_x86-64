#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.13"
export AGNI_KERNEL_LINUX="6.12.57"
sed -i 's/agni-v6.12/agni-v6.13/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.54 Kernel/6.12.57 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


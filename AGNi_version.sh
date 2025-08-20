#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.6"
export AGNI_KERNEL_LINUX="6.12.43"
sed -i 's/agni-v6.5/agni-v6.6/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.41 Kernel/6.12.43 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


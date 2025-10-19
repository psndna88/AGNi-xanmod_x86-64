#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v6.12"
export AGNI_KERNEL_LINUX="6.12.54"
sed -i 's/agni-v6.11/agni-v6.12/' $KERNELDIR/CONFIGS/agni/agni*config
sed -i 's/6.12.49 Kernel/6.12.54 Kernel/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v1.5"
export AGNI_KERNEL_LINUX="5.17.11"
sed -i 's/agni-v1.4/agni-v1.5/' $KERNELDIR/CONFIGS/agni-xanmod/agni*config
sed -i 's/5.17.9 Kernel/5.17.11 Kernel/' $KERNELDIR/CONFIGS/agni-xanmod/agni*config

echo "	AGNi Version info loaded."


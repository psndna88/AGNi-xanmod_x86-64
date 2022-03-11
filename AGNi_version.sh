#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v1.3"
export AGNI_KERNEL_LINUX="5.16.14"
sed -i 's/agni-v1.2/agni-v1.3/' $KERNELDIR/CONFIGS/agni-xanmod/agni*config

echo "	AGNi Version info loaded."


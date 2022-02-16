#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v1.1"
export AGNI_KERNEL_LINUX="5.16.10"
sed -i 's/agni-v1.0/agni-v1.1/' $KERNELDIR/CONFIGS/agni-xanmod/agni*config

echo "	AGNi Version info loaded."


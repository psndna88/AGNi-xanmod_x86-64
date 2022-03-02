#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v1.2"
export AGNI_KERNEL_LINUX="5.16.12"
sed -i 's/agni-v1.1/agni-v1.2/' $KERNELDIR/CONFIGS/agni-xanmod/agni*config

echo "	AGNi Version info loaded."


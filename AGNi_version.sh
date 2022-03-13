#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v1.0"
export AGNI_KERNEL_LINUX="5.4.184"
sed -i 's/agni-v1.0/agni-v1.0/' $KERNELDIR/CONFIGS/agni/agni*config

echo "	AGNi Version info loaded."


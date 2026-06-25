#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v19.1"
export AGNI_KERNEL_LINUX="6.18.36"
sed -i 's/AGNi-v18.6/AGNi-v19.1/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.6.142/6.18.36/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."


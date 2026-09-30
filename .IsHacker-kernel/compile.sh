#!/bin/bash

# These are the exact commands used to build this kernel
# To use this script, first move it to ../

git clone https://github.com/IsHacker-kernel/toolchain_aarch64-linux-android-4.9 /tmp/toolchain_aarch64-linux-android-4.9

export PATH="/tmp/toolchain_aarch64-linux-android-4.9/bin:${PATH}"
export ARCH="arm64"
export CROSS_COMPILE="aarch64-linux-android-"
make O=out ARCH=${ARCH} NE1_defconfig
make -j$(nproc) O=out ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE}

#!/bin/bash

TOOL_PATH="${PWD}../tools/arm-bcm2708/"

PATH_GCC_NAME="gcc-linaro-arm-linux-gnueabihf-raspbian-x64"
PATH_GCC="/tools/${PATH_GCC_NAME}"
if [ -L ${PATH_GCC} ]
then
	echo "GCC found.. "
else
	echo "Gcc path not found, creating a symbolical link"

	test -d /tools || mkdir /tools >/dev/null 2>&1
	ln -svf ${TOOL_PATH}/${PATH_GCC_NAME} ${PATH_GCC}

fi


# Exporting GCC
PATH="${PATH}:${PATH_GCC}/bin"
CROSS_COMPILE="arm-linux-gnueabihf-"
ARCH=arm

fc_build_kernel() {
	cd ${PWD}../linux

	# Config kernel for Pi2
	KERNEL=kernel7
	make ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} bcm2709_defconfig

	# Build it
	NCPU="4" 
	make ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} zImage modules dtbs -j${NCPU}

}
fc_build_kernel

fc_build_app_mtulio01() {
	OPWD="${PWD}"
	PATH_APPS="${PWD}../apps"	
	cd ${PATH_APPS}/mtulio01
	make CROSS_COMPILE=${CROSS_COMPILE}


	cd ${OPWD}
}
fc_build_app_mtulio01


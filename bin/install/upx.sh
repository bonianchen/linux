#!/bin/sh

APP_PATH="which upx"

IS_X86=`uname -m | grep x86_64`

if [ -e "${APP_PATH}" ]; then

    mkdir -p /tmp/upx

    if [ -z "${IS_X86}" ]; then
        curl -L 
	APP_VER="4.0.2"
    APP_FOLDER="upx-${APP_VER}-arm64_linux"
        curl -L https://github.com/upx/upx/releases/download/v${APP_VER}/upx-${APP_VER}-arm64_linux.tar.xz -o /tmp/upx/upx.tar.xz
    else
	APP_VER="4.0.2"
    APP_FOLDER="upx-${APP_VER}-amd64_linux"
        curl -L https://github.com/upx/upx/releases/download/v${APP_VER}/upx-${APP_VER}-amd64_linux.tar.xz -o /upx/tmp/upx.tar.xz
    fi

    CURR_DIR=`pwd`
    cd /tmp/upx
    tar -xf upx.tar.xz
    ln -s /tmp/upx/${APP_FOLDER}/upx ${HOME}/bin/upx
fi

export PATH
echo "${PATH}"

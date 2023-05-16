#!/bin/sh

APP_PATH=`which clang`

if [ -z "${APP_PATH}" ]; then
    sudo apt install -y lsb-release wget software-properties-common gnupg
    sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
fi

export PATH
echo "${PATH}"


#!/bin/sh

APP_PATH=`which clang`

if [ -z "${APP_PATH}" ]; then
    if [ ! -e /usr/bin/clang-15 ]; then
        sudo apt install -y lsb-release wget software-properties-common gnupg
        sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
    fi
    ln -s /usr/bin/clang-15 $HOME/bin/clang
fi

export PATH
echo "${PATH}"


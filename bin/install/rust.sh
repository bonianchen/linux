#!/bin/sh

APP_PATH=`which cargo`

if [ -z "${APP_PATH}" ]; then
    if [ ! -e $HOME/.cargo ]; then
        sudo apt-get install -y build-essential
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o /tmp/rustup.sh
	chmod +x /tmp/rustup.sh
	sh -c "/tmp/rustup.sh -y"
        sh -c "$HOME/.cargo/env"
	PATH=$HOME/.cargo/bin:$PATH
        rustup toolchain install nightly
        rustup override set nightly
    else
	PATH=$HOME/.cargo/bin:$PATH
    fi
fi

export PATH
echo "${PATH}"


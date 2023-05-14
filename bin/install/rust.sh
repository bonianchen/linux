#!/bin/sh

APP_PATH=`which cargo`

if [ -z "${APP_PATH}" ]; then
    if [ ! -e $HOME/.cargo ]; then
        sudo apt-get install -y build-essential
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
        sh -c "$HOME/.cargo/env"
        rustup toolchain install nightly
        rustup override set nightly
    else
        sh -c "$HOME/.cargo/env"
    fi
fi


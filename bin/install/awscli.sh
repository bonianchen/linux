#!/bin/sh

APP_PATH="/usr/local/bin/aws"

IS_X86=`uname -m | grep x86_64`

if [ ! -e "${APP_PATH}" ]; then

    mkdir -p /tmp/awscli
    if [ -z "${IS_X86}" ]; then
        curl -L "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "/tmp/awscli/awscliv2.zip"
    else
        curl -L "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscli/awscliv2.zip"
    fi

    CURR_DIR=`pwd`
    cd /tmp/awscli
    unzip awscliv2.zip
    sudo ./aws/install
    cd ${CURR_DIR}
fi

export PATH
echo "${PATH}"

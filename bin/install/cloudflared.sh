#!/bin/sh

APP_PATH=`which cloudflared`

IS_X86=`uname -m | grep x86_64`

#if [ -z "${APP_PATH}" ]; then
    if [ ! -z "${IS_X86}" ]; then
        curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb \
         --output /tmp/cloudflared-linux.deb
        sudo dpkg -i /tmp/cloudflared-linux.deb
    fi
#fi

export PATH
echo "${PATH}"

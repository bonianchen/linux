#!/bin/sh

APP_PATH=`which go`

if [ -z "${APP_PATH}" ]; then
    if [ ! -e /usr/local/go ]; then
        sudo rm -rf /usr/local/go
        curl -L https://go.dev/dl/go1.20.3.linux-amd64.tar.gz \
            | sudo tar -C /usr/local -xz
    fi
fi

USER_PATH=`echo ${PATH} | grep "${USER}\/go\/bin:"`
if [ -z "${USER_PATH}" ]; then
    PATH="${HOME}/go/bin:$PATH:/usr/local/go/bin"
fi

export PATH
echo "${PATH}"


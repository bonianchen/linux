#!/bin/sh

APP_PATH=`which bazelisk`

if [ -z "${APP_PATH}" ]; then
    PATH=`sh -c "app_install.sh go" | tail -1`
    if [ ! -e $HOME/go/bin/bazelisk ]; then
        go install github.com/bazelbuild/bazelisk@latest
    fi
fi

export PATH
echo "${PATH}"


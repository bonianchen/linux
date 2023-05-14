#!/bin/sh

APP_PATH=`which bazelisk`

if [ -z "${APP_PATH}" ]; then
    sh -c app_install.sh go
    if [ ! -e $HOME/go/bin/bazelisk ]; then
        go install github.com/bazelbuild/bazelisk@latest
    fi
fi


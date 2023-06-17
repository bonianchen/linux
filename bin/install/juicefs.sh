#!/bin/sh

APP_PATH=`which gh`

if [ -z "${APP_PATH}" ]; then
    curl -sSL https://d.juicefs.com/install | sh -
fi

export PATH
echo "${PATH}"

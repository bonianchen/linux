#!/bin/sh

APP_PATH=`which node`

if [ -z "${APP_PATH}" ]; then
    curl -fsSL https://deb.nodesource.com/setup_19.x | sudo bash - && sudo apt-get install -y nodejs
fi

export PATH
echo "${PATH}"


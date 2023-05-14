#!/bin/sh

APP_PATH=`which pip`

if [ -z "${APP_PATH}" ]; then
    sudo apt-get install -y python3 python3-pip pip
fi

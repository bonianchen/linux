#!/bin/sh

APP_PATH=`which pip`

if [ -z "${APP_PATH}" ]; then
    sudo apt-get install -y python3 python3-pip pip
    ln -s `which python3` $HOME/bin/python
fi

export PATH
echo "${PATH}"


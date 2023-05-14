#!/bin/sh

APP_PATH=`which b2`

if [ -z "${APP_PATH}" ]; then
    sudo rm -rf /usr/local/bin/b2
    curl -L https://github.com/Backblaze/B2_Command_Line_Tool/releases/latest/download/b2-linux -o /tmp/b2
    sudo mv /tmp/b2 /usr/local/bin/b2
fi

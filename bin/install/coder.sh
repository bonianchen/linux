#!/bin/sh

APP_PATH=`which /opt/coder/code-server/bin/code-server`

if [ -z "${APP_PATH}" ]; then
    sudo mkdir -p /opt/coder
    sudo chown $USER.$USER /opt/coder
    cd /opt/coder
    curl -fsSL https://code-server.dev/install.sh | sh -s -- --method=standalone --prefix=/opt/coder/code-server
fi
/opt/coder/code-server/bin/code-server --auth none --port 13337 &

export PATH
echo "${PATH}"


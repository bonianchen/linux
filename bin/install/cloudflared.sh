#!/bin/sh

APP_PATH=`which cloudflared`

#if [ -z "${APP_PATH}" ]; then
    curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb \
    --output cloudflared-linux-amd64.deb && sudo dpkg -i cloudflared-linux-amd64.deb
#fi


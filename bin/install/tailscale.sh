#!/bin/sh

APP_PATH=`which tailscale`

if [ -z "${APP_PATH}" ]; then
    curl -fsSL https://pkgs.tailscale.com/stable/debian/bullseye.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
    curl -fsSL https://pkgs.tailscale.com/stable/debian/bullseye.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list
    sudo apt-get update
    sudo apt-get install -y tailscale
    sudo tailscale up; tailscale ip -4
fi

export PATH
echo "${PATH}"


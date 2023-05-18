#!/bin/sh

sudo apt-get -o Dpkg::Options::="--force-confask" install --reinstall pulseaudio
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export DBUS_SESSION_BUS_ADDRESS="unix:path=${XDG_RUNTIME_DIR}/bus"
pulseaudio --start

curl -L -o chrome-remote-desktop_current_amd64.deb \
    https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
echo "unset DBUS_SESSION_BUS_ADDRESS" > .chrome-remote-desktop-session
echo "unset SESSION_MANAGER" >> .chrome-remote-desktop-session
echo "mate-session" >> .chrome-remote-desktop-session
sudo apt install --assume-yes ./chrome-remote-desktop_current_amd64.deb
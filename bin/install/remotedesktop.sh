#!/bin/sh

APP_PATH="/opt/google/chrome-remote-desktop"

IS_X86=`uname -m | grep x86_64`

if [ ! -e "${APP_PATH}" ]; then

    if [ ! -z "${IS_X86}" ]; then
    sudo apt-get install -y pavucontrol
    sudo apt-get -o Dpkg::Options::="--force-confask" install --reinstall pulseaudio
    export XDG_RUNTIME_DIR=/run/user/$(id -u)
    export DBUS_SESSION_BUS_ADDRESS="unix:path=${XDG_RUNTIME_DIR}/bus"
    pulseaudio --start

    curl -L -o /tmp/chrome-remote-desktop_current_amd64.deb \
        https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
    echo "unset DBUS_SESSION_BUS_ADDRESS" > $HOME/.chrome-remote-desktop-session
    echo "unset SESSION_MANAGER" >> $HOME/.chrome-remote-desktop-session
    echo "mate-session" >> $HOME/.chrome-remote-desktop-session
    sudo apt install -y /tmp/chrome-remote-desktop_current_amd64.deb

    systemctl --user restart pulseaudio.service
    fi

fi

export PATH
echo "${PATH}"

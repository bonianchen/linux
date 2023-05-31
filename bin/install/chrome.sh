#!/bin/sh

APP_PATH=`which chrome`

if [ -z "${APP_PATH}" ]; then
    #curl -L -o google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    #sudo dpkg -i google-chrome-stable_current_amd64.deb
    curl -L -o /tmp/google-chrome-beta_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-beta_current_amd64.deb
    sudo dpkg -i /tmp/google-chrome-beta_current_amd64.deb
    sudo apt-get -y --fix-broken upgrade
fi

export PATH
echo "${PATH}"

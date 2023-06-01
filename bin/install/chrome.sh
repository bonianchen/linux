#!/bin/sh

APP_PATH=`which chrome`

IS_X86=`uname -m | grep x86_64`

if [ -z "${APP_PATH}" ]; then

    if [ ! -z "${IS_X86}" ]; then
    if [ ! -e /opt/google/chrome-beta ]; then
      #curl -L -o google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
      #sudo dpkg -i google-chrome-stable_current_amd64.deb
      curl -L -o /tmp/google-chrome-beta_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-beta_current_amd64.deb
      sudo dpkg -i /tmp/google-chrome-beta_current_amd64.deb
      sudo apt-get -y --fix-broken upgrade
    fi
    ln -s /opt/google/chrome-beta/chrome $HOME/bin/chrome
    else
        sudo apt-get install -y chromium
	ln -s /usr/bin/chromium $HOME/bin/chrome
    fi
fi

export PATH
echo "${PATH}"

#!/bin/sh

APP_PATH=`which b2`

IS_X86=`uname -m | grep x86_64`

if [ -z "${APP_PATH}" ]; then
  if [ ! -z "${IS_X86}" ]; then
    sudo rm -rf /usr/local/bin/b2
    curl -L https://github.com/Backblaze/B2_Command_Line_Tool/releases/latest/download/b2-linux -o /tmp/b2
    sudo mv /tmp/b2 /usr/local/bin/b2
    sudo chmod +x /usr/local/bin/b2
  else
    source app_install.sh pip
    pip install b2
    PATH=${PATH}:${HOME}/.local/bin
  fi
else
  if [ -z "${IS_X86}" ]; then
    PATH=${PATH}:${HOME}/.local/bin
  fi
fi

export PATH
echo "${PATH}"


#!/bin/sh

get_executable_fullpath() {
    HEAD_OF_COMMAND=`echo $0 | cut -d'/' -f1`
    if [ ! -z "${HEAD_OF_COMMAND}" ]; then
        THIS_EXEC="`pwd`/$0"
    else
        THIS_EXEC="$0"
    fi
    COMMAND_FOLDER=`dirname ${THIS_EXEC}`
}

install_app() {
    if [ -e "${COMMAND_FOLDER}/${TARGET_APP}.sh" ]; then
        source "${COMMAND_FOLDER}/${TARGET_APP}.sh"
    else
        sudo apt-get install -y "${TARGET_APP}"
    fi
}


if [ $# -eq 1 ]; then
    TARGET_APP=`basename $1`
    if [ ! -z "${TARGET_APP}" ]; then
        APP_EXISTANCE=`which ${TARGET_APP}`
        if [ -z "${APP_EXISTANCE}" ]; then
            get_executable_fullpath
            install_app
        fi
    fi
fi

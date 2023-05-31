#!/bin/sh

get_executable_fullpath() {
    THIS_COMMAND=$0
    THIS_COMMAND="$HOME/bin/app_install.sh"
    HEAD_OF_COMMAND=`echo ${THIS_COMMAND} | cut -d'/' -f1`
    if [ ! -z "${HEAD_OF_COMMAND}" ]; then
        THIS_EXEC="`pwd`/${THIS_COMMAND}"
    else
        THIS_EXEC="${THIS_COMMAND}"
    fi
    COMMAND_FOLDER=`dirname ${THIS_EXEC}`
}

install_app() {
    if [ -e "${COMMAND_FOLDER}/install/${TARGET_APP}.sh" ]; then
        #PATH=`sh -c "${COMMAND_FOLDER}/install/${TARGET_APP}.sh" | tail -1`
        PATH=`source "${COMMAND_FOLDER}/install/${TARGET_APP}.sh" | tail -1`
    else
        APP_EXISTANCE=`which ${TARGET_APP}`
        if [ -z "${APP_EXISTANCE}" ]; then
            sudo apt-get install -y "${TARGET_APP}"
        fi
    fi
}


if [ $# -eq 1 ]; then
    TARGET_APP=`basename $1`
    if [ ! -z "${TARGET_APP}" ]; then
        get_executable_fullpath
        install_app
    fi
fi

export PATH
echo "${PATH}"

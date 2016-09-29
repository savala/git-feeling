#!/usr/bin/env bash

usage() {
    (echo "git-feeling - Add some emotion to your commit messages!"
     echo "Usage: git feeling [options] <msg>"
     echo "[options]"
     echo " -h or --happy"
     echo " -s or --sad"
     echo " -w or --win"
     echo " -a or --angry"
     echo " -m or --money"
     echo " -z or --zap"
     echo " --usage") 1>&2
}

happy() {
    message=":smiley: ${1}"
    git commit -m "${message}"
}

angry() {
    message=":rage: ${1}"
    git commit -m "${message}"
}

tired() {
    message=":tired_face: ${1}"
    git commit -m "${message}"
}

money() {
    message=":moneybag: ${1}"
    git commit -m "${message}"
}

win() {
    message=":beer: ${1}"
    git commit -m "${message}"
}

zap() {
    message= ":zap: ${1}"
    git commit -m "${message}"
}

if [ $# -le 0 ]; then
    echo "Incorrect arguments \n"
    usage
    exit 0
fi

while [ $# -gt 1 ]; do
    case $1 in
        --usage)
            usage 
            exit 0;;
        -h|--happy)
            happy "${2}"
            exit 0;;
        -s|--sad)
            tired "${2}"
            exit 0;;
        -w|--win)
            win "${2}"
            exit 0;;
        -a|--angry)
            angry "${2}"
            exit 0;;
        -m|--money)
            money "${2}"
            exit 0;;
        -z|--zap)
            zap "${2}"
            exit 0;;
        *)
            usage
            exit 0;;
    esac
    shift 2
done

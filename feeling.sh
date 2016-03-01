#!/usr/bin/env bash

usage() {
    (echo "git-feeling - Add some emotion to your commit messages!") 1>&2
}

happy() {
    message=":smiley: $1"
    git commit -m "${message}"
}

angry() {
    message=":rage: $1"
    git commit -m "${message}"
}

tired() {
    message=":tired_face: $1"
    git commit -m "${message}"
}

money() {
    message=":moneybag: $1"
    git commit -m "${message}"
}

win() {
    message=":beer: $1"
    git commit -m "${message}"
}

while [ $# -gt 0 ]; do
    case $1 in
        --usage)
            usage 
            exit 0;;
        -h|--happy)
            happy $2
            exit 0;;
        -w|--win)
            win $2
            exit 0;;
        -a|--angry)
            angry $2
            exit 0;;
        -y|--yee)
            money $2
            exit 0;;
        *)
            usage
            exit 0;;
    esac
    shift 1
done

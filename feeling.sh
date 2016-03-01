#!/usr/bin/env bash

usage() {
    (echo "git-feeling - Add some emotion to your commit messages!") 1>&2
}

happy() {
    git commit -m ":smiley: $1"
}

while [ $# -gt 0 ]; do
    case $1 in
        --usage)
            usage 
            exit 0;;
        -h|--happy)
            happy $2;;
        *)
            usage
            exit 0;;
    esac
    shift 1
done

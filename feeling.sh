#!/usr/bin/env bash

usage() {
    (echo "git-feeling - Add some emotion to your commit messages!"
	echo "Usage: git feeling [option] <msg>"
	echo "[options]"
	echo " -h or --happy        | -s or --sad"
    echo " -w or --win          | -a or --angry"
	echo " -m or --money        | -sm or --smile"
	echo " -l or --laugh        | -y or --yum"
	echo " -rlx or --relaxed    | -rlv or --relieve"
	echo " -wnk or --wink       | -sot or --stuckouttongue"
    echo " -j or --joy          | -wry or --worry"
    echo " -cnf or --confused   | -ss or --sweatsmile"
    echo " -swt or --sweat      |  -c or --cry"
    echo " -z or --zzz          | -scr or --scream"
    echo " -sg or --sunglasses  | -t or --tired"
    echo " -slp or --sleepy     | -f or --fire"
    echo " -1                   | +1"
    echo " -sh or --shit        | -run or --running"
    echo " -tr or --troll       | -sk or --skull"
    echo " --usage") 1>&2
}

happy() {
    shift 1
    message=":smiley: ${@}"
    git commit -m "${message}"
}

sad(){
    shift 1
    message=":sob: $@"
    git commit -m "${message}"
}

win() {
    shift 1
    message=":beer: $@"
    git commit -m "${message}"
}

angry() {
    shift 1
    message=":rage: $@"
    git commit -m "${message}"
}

money() {
    message=":moneybag: $@"
    git commit -m "${message}"
}

smile() {
    shift 1
    message=":smile: $@"
    git commit -m "${message}"
}

tired() {
    shift 1
    message=":tired_face: $@"
    git commit -m "${message}"
}

laugh() {
    shift 1
    message=":laughing: $@"
    git commit -m "${message}"
}

yum() {
    shift 1
    message=":yum: $@"
    git commit -m "${message}"
}

relaxed() {
    shift 1
    message=":relaxed: $@"
    git commit -m "${message}"
}

relieve() {
    shift 1
    message=":relieve: $@"
    git commit -m "${message}"
}

wink() {
    shift 1
    message=":wink: $@"
    git commit -m "${message}"
}

stuckouttongue() {
    shift 1
    message=":stuck_out_tongue: $@"
    git commit -m "${message}"
}

joy() {
    shift 1
    message=":joy: $@"
    git commit -m "${message}"
}

worry() {
    shift 1
    message=":worried: $@"
    git commit -m "${message}"
}

confused() {
    shift 1
    message=":confused: $@"
    git commit -m "${message}"
}

sweatsmile() {
    shift 1
    message=":sweat_smile: $@"
    git commit -m "${message}"
}

sweat() {
    shiftshift 1 1
    message=":sweat: $@"
    git commit -m "${message}"
}

cry() {
    shift 1
    message=":cry: $@"
    git commit -m "${message}"
}

zzz() {
    shift 1
    message=":zzz: $@"
    git commit -m "${message}"
}

scream() {
    shift 1
    message=":scream: $@"
    git commit -m "${message}"
}

sunglasses() {
    shift 1
    message=":sunglasses: $@"
    git commit -m "${message}"
}

tired() {
    shift 1
    message=":tired_face: $@"
    git commit -m "${message}"
}

sleepy(){
    shift 1
    message=":sleepy: $@"
    git commit -m "${message}"
}

fire() {
    shift 1
    message=":fire: $@"
    git commit -m "${message}"
}

minus1() {
    shift 1
    message=":-1: $@"
    git commit -m "${message}"
}

plus1() {
    shift 1
    message=":+1: $@"
    git commit -m "${message}"
}

shit() {
    shift 1
    message=":shit: $@"
    git commit -m "${message}"
}

running() {
    shift 1
    message=":runner: $@"
    git commit -m "${message}"
}

troll() {
    shift 1
    message=":trollface: $@"
    git commit -m "${message}"
}

skull() {
    shift 1
    message=":skull: $@"
    git commit -m "${message}"
}

if [ $# -le 0 ]; then
    echo "Incorrect arguments"
    usage
    exit 0
fi

while [ $# -gt 1 ]; do
    case $1 in
        --usage)
            usage 
            exit 0;;
        -h|--happy)
            happy "$@"
            exit 0;;
        -s|--sad)
            tired "$@"
            exit 0;;
        -w|--win)
            win "$@"
            exit 0;;
        -a|--angry)
            angry "$@"
            exit 0;;
        -m|--money)
            money "$@"
            exit 0;;
        -sm|--smile)
            smile "$@"
            exit 0;;
        -l|--laugh)
            laugh "$@"
            exit 0;;
        -y|--yum)
            yum "$@"
            exit 0;;
        -rlx|--relax)
            relaxed "$@"
            exit 0;;
        -rlv|--relieve)
            relieve "$@"
            exit 0;;
        -wnk|--wink)
            wink "$@"
            exit 0;;
        -sot|--stuckouttongue)
            stuckouttongue "$@"
            exit 0;;
        -j|--joy)
            joy "$@"
            exit 0;;
        -wry|--worry)
            worry "$@"
            exit 0;;
        -cnf|--confused)
            confused "$@"
            exit 0;;
        -ss|--sweatsmile)
            sweatsmile "$@"
            exit 0;;
        -swt|--sweat)
            sweat "$@"
            exit 0;;
        -c|--cry)
            cry "$@"
            exit 0;;
        -z|--zzz)
            zzz "$@"
            exit 0;;
        -scr|--scream)
            scream "$@"
            exit 0;;
        -sg|--sunglasses)
            sunglasses "$@"
            exit 0;;
        -t|--tired)
            tired "$@"
            exit 0;;
        -slp|--sleepy)
            sleepy "$@"
            exit 0;;
        -f|--fire)
            fire "$@"
            exit 0;;
        -1)
            minus1 "$@"
            exit 0;;
        +1)
            plus1 "$@"
            exit 0;;
        -sh|--shit)
            shit "$@"
            exit 0;;
        -run|--running)
            running "$@"
            exit 0;;
        -tr|--troll)
            troll "$@"
            exit 0;;
        -sk|--skull)
            skull "$@"
            exit 0;;
        *)
            usage
            exit 0;;
    esac
done

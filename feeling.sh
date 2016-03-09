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
    echo " -j or joy            | -wry or --worry"
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
    message=":smiley: ${1}"
    git commit -m "${message}"
}

sad(){
    message=":sob: ${1}"
    git commit -m "${message}"
}

win() {
    message=":beer: ${1}"
    git commit -m "${message}"
}

angry() {
    message=":rage: ${1}"
    git commit -m "${message}"
}

money() {
    message=":moneybag: ${1}"
    git commit -m "${message}"
}

smile() {
    message=":smile: ${1}"
    git commit -m "${message}"
}

tired() {
    message=":tired_face: ${1}"
    git commit -m "${message}"
}

laugh() {
    message=":laughing: ${1}"
    git commit -m "${message}"
}

yum() {
    message=":yum: ${1}"
    git commit -m "${message}"
}

relaxed() {
    message=":relaxed: ${1}"
    git commit -m "${message}"
}

relieve() {
    message=":relieve: ${1}"
    git commit -m "${message}"
}

wink() {
    message=":wink: ${1}"
    git commit -m "${message}"
}

stuckouttongue() {
    message=":stuck_out_tongue: ${1}"
    git commit -m "${message}"
}

joy() {
    message=":joy: ${1}"
    git commit -m "${message}"
}

worry() {
    message=":worried: ${1}"
    git commit -m "${message}"
}

confused() {
    message=":confused: ${1}"
    git commit -m "${message}"
}

sweatsmile() {
    message=":sweat_smile: ${1}"
    git commit -m "${message}"
}

sweat() {
    message=":sweat: ${1}"
    git commit -m "${message}"
}

cry() {
    message=":cry: ${1}"
    git commit -m "${message}"
}

zzz() {
    message=":zzz: ${1}"
    git commit -m "${message}"
}

scream() {
    message=":scream: ${1}"
    git commit -m "${message}"
}

sunglasses() {
    message=":sunglasses: ${1}"
    git commit -m "${message}"
}

tired() {
    message=":tired_face: ${1}"
    git commit -m "${message}"
}

sleepy(){
    message=":sleepy: ${1}"
    git commit -m "${message}"
}

fire() {
    message=":fire: ${1}"
    git commit -m "${message}"
}

minus1() {
    message=":-1: ${1}"
    git commit -m "${message}"
}

plus1() {
    message=":+1: ${1}"
    git commit -m "${message}"
}

shit() {
    message=":shit: ${1}"
    git commit -m "${message}"
}

running() {
    message=":runner: ${1}"
    git commit -m "${message}"
}

troll() {
    message=":trollface: ${1}"
    git commit -m "${message}"
}

skull() {
    message=":skull: ${1}"
    git commit -m "${message}"
}

if [ $# -le 0 ]; then
    echo "Incorrect arguments"
    usage
    exit 0
fi

while [ $# -gt 0 ]; do
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
        -sm|--smile)
            smile "${2}"
            exit 0;;
        -l|--laugh)
            laugh "${2}"
            exit 0;;
        -y|--yum)
            yum "${2}"
            exit 0;;
        -rlx|--relax)
            relax "${2}"
            exit 0;;
        -rlv|--relieve)
            relieve "${2}"
            exit 0;;
        -wnk|--wink)
            wink "${2}"
            exit 0;;
        -sot|--stuckouttongue)
            stuckouttongue "${2}"
            exit 0;;
        -j|--joy)
            joy "${2}"
            exit 0;;
        -wry|--worry)
            worry "${2}"
            exit 0;;
        -cnf|--confused)
            confused "${2}"
            exit 0;;
        -ss|--sweatsmile)
            sweatsmile "${2}"
            exit 0;;
        -swt|--sweat)
            sweat "${2}"
            exit 0;;
        -c|--cry)
            cry "${2}"
            exit 0;;
        -z|--zzz)
            zzz "${2}"
            exit 0;;
        -scr|--scream)
            scream "${2}"
            exit 0;;
        -sg|--sunglasses)
            sunglasses "${2}"
            exit 0;;
        -t|--tired)
            tired "${2}"
            exit 0;;
        -slp|--sleepy)
            sleepy "${2}"
            exit 0;;
        -f|--fire)
            fire "${2}"
            exit 0;;
        -1)
            minus1 "${2}"
            exit 0;;
        +1)
            plus1 "${2}"
            exit 0;;
        -sh|--shit)
            shit "${2}"
            exit 0;;
        -run|--running)
            running "${2}"
            exit 0;;
        -tr|--troll)
            troll "${2}"
            exit 0;;
        -sk|--skull)
            skull "${2}"
            exit 0;;
        *)
            usage
            exit 0;;
    esac
    shift 2
done

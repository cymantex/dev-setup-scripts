#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/utils.sh"
. "$SCRIPT_FOLDER/lib/git-utils.sh"

function startCreateScript {
    setColor "$BG_BLACK"

    if [ -z "$2" ]; then
        echo "Usage: "$1" \$nameOfApp"
        exit
    fi

    exitIfFolderExists "$2"

    printTitle "$1: $2"
    mkdir $2
    cd $2
}

function install {
    cd $1
    setColor "$WHITE_BOLD"
    echo -e "\nInstalling dependencies..."
    setColor "$COLORLESS"
    npm upgrade
    npm install
}

function endCreateScript {
    setColor "$GREEN"
    echo -e "\n Happy Hacking! \n"
    setColor "$COLORLESS"
    printEndOfSection
}
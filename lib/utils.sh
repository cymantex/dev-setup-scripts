#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/colors.sh"

function runNodeScript {
    cp -r "$SCRIPT_FOLDER/node/$1" "$PWD"/scripts
    ts-node scripts.ts setupClientServer "$2"
    rm -rf "$PWD/scripts/setupClientServer.ts"
}

function printTitle {
    setColor "$WHITE_BOLD"
    echo -e "------------------------------------------------------------------------"
    echo -e "$1"
    echo -e "------------------------------------------------------------------------"
    setColor "$COLORLESS"
}

function printEndOfSection {
    setColor "$WHITE_BOLD"
    echo -e "------------------------------------------------------------------------\n"
    setColor "$COLORLESS"
}

function exitIfFolderExists {
    if [[ -d "$PWD"/"$1" ]]; then
        setColor "$RED"
        echo "Error: The chosen folder name already exists."
        exit
    fi
}
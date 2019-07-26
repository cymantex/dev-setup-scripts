#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/create-app-script.sh"

startCreateScript "create-npm-module" "$1"
includeRepository "npm-module-template"
install "."
endCreateScript
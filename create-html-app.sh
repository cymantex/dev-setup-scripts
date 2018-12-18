#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/create-app-script.sh"

startCreateScript "create-html-app" "$1"
includeRepository "basic-html"
includeSass "dev/sass"
includeGulp
install "."
endCreateScript
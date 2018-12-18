#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/functions.sh"

create "create-html-app" "$1"
includeRepository "basic-html"
includeSass "dev/sass"
includeGulp
install
#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/functions.sh"

create "create-react-app" "$1"
includeRepository "create-react-app"
includeSass "src/sass"
install
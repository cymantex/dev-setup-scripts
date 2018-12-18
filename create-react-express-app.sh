#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/functions.sh"

create "create-react-express-app" "$1"
includeRepository "create-react-app"
includeRepository "typescript-express"
includeSass "client/src/sass"
installRootAnd "client"
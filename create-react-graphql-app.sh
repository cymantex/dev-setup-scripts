#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/create-app-script.sh"

startCreateScript "create-react-graphql-app" "$1"
includeRepository "create-react-app" "client"
includeRepository "typescript-graphql"
includeSass "client/src/sass"
install "."
install "client"
endCreateScript
#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/create-app-script.sh"

startCreateScript "create-graphql-app" "$1"
includeRepository "typescript-express"
install "."
endCreateScript
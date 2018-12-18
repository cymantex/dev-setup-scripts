#!/usr/bin/env bash
. "./functions.sh"

create "create-react-express-app" "$1"
includeRepository "create-react-app"
includeRepository "typescript-express"
includeSass "client/src/sass"
installRootAnd "client"
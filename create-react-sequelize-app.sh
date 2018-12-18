#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/functions.sh"

create "create-react-sequelize-app" "$1"
includeRepository "create-react-app" "client"
includeRepository "sequelize-typescript-express"
includeSass "client/src/sass"
installRootAnd "client"
#!/usr/bin/env bash
. "./functions.sh"

create "create-react-sequelize-app" "$1"
includeRepository "create-react-app" "client"
includeRepository "sequelize-typescript-express"
includeSass "client/src/sass"
installRootAnd "client"
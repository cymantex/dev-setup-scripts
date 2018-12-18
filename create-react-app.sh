#!/usr/bin/env bash
. "./functions.sh"

create "create-react-app" "$1"
includeRepository "create-react-app"
includeSass "src/sass"
install
#!/usr/bin/env bash
. "./functions.sh"

create "create-html-app" "$1"
includeRepository "basic-html"
includeSass "dev/sass"
includeGulp
install
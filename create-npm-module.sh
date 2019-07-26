#!/usr/bin/env bash

startCreateScript "create-npm-module" "$1"
includeRepository "npm-module-template"
install "."
endCreateScript
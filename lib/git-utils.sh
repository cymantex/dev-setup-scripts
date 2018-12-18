#!/usr/bin/env bash
function includeRepository {
    git clone https://github.com/dv16sen/"$1".git
    rm -rf ./"$1"/.git
    cp -r ./"$1"/. "$PWD"/"$2"
    rm -rf ./"$1"
}

function includeSass {
    git clone https://github.com/dv16sen/react-scss-framework.git
    cp -r ./react-scss-framework/src/sass/. "$PWD"/"$1"
    rm -rf ./react-scss-framework
}

function includeGulp {
    git clone https://github.com/dv16sen/Gulp.git
    rm -rf ./Gulp/.git
    cp -r ./Gulp/. "$PWD"
    cp -r ./Gulp/gulp/. "$PWD"/temp
    rm -rf ./Gulp
    cp -r "$PWD"/temp/. "$PWD"/gulp/
    rm -rf "$PWD"/temp
}
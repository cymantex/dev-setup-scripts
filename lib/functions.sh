#!/usr/bin/env bash

function create {
    if [ -z "$2" ]; then
        echo "Usage: "$1" \$nameOfApp"
        exit
    fi

    exitIfFolderExists "$2"

    printTitle "Creating App "$2":"
    mkdir $2
    cd $2
}

function install {
    echo -e "\nInstalling dependencies..."
    npm upgrade
    npm install
    echo -e "\n Happy Hacking! \n"
    printEndOfSection
}

function installRootAnd {
    echo "Installing dependencies..."
    npm upgrade
    npm install
    cd "$1"
    npm upgrade
    npm install
    echo -e "\n Happy Hacking! \n"

    printEndOfSection
}

function printTitle {
    echo -e "------------------------------------------------------------------------"
    echo -e "$1"
    echo -e "------------------------------------------------------------------------"
}

function printEndOfSection {
    echo -e "------------------------------------------------------------------------\n"
}

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

function exitIfFolderExists {
    if [ -d "$PWD"/"$1" ]; then
        echo "Error: The chosen folder name already exists."
        exit
    fi
}
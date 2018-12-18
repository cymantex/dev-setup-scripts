#!/usr/bin/env bash

function printTitle {
    echo -e "------------------------------------------------------------------------"
    echo -e "$1"
    echo -e "------------------------------------------------------------------------"
}

function printEndOfSection {
    echo -e "------------------------------------------------------------------------\n"
}

if [ "$#" -lt 1 ]; then
    echo "Usage: create-html-app \$nameOfApp"
    exit
fi

if [ -d "$PWD"/"$1" ]; then
	echo "Error: The chosen project folder already exists."
	exit
fi

printTitle "Creating HTML App "$1""

echo "Adding preferred file structure..."
mkdir $1
cd $1
git clone https://github.com/dv16sen/basic-html.git
rm -rf ./basic-html/.git
cp -r basic-html/. "$PWD"/
rm -rf ./basic-html

git clone https://github.com/dv16sen/react-scss-framework.git
cp -r ./react-scss-framework/src/sass/. "$PWD"/dev/sass/
rm -rf ./react-scss-framework

git clone https://github.com/dv16sen/Gulp.git
rm -rf ./Gulp/.git
cp -r ./Gulp/. "$PWD"
cp -r ./Gulp/gulp/. "$PWD"/temp
rm -rf ./Gulp
cp -r "$PWD"/temp/. "$PWD"/gulp/
rm -rf "$PWD"/temp

echo "Installing dependencies..."
npm upgrade
npm install
echo -e "\n Happy Hacking! \n"

printEndOfSection
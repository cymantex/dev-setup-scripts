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
    echo "Usage: create-react-app \$nameOfApp"
    exit
fi

if [ -d "$PWD"/"$1" ]; then
	echo "Error: The chosen project folder already exists."
	exit
fi

printTitle "Creating React App: "$1""

echo "Adding preferred file structure..."
mkdir $1
cd $1
git clone https://github.com/dv16sen/create-react-app.git
rm -rf ./create-react-app/.git
cp -r ./create-react-app/. "$PWD"/
rm -rf ./create-react-app

echo "Installing dependencies..."
npm upgrade
npm install
echo -e "\n Happy Hacking! \n"

printEndOfSection
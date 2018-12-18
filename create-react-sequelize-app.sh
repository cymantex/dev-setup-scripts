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
    echo "Usage: create-react-sequelize-app \$nameOfApp"
    exit
fi

if [ -d "$PWD"/"$1" ]; then
	echo "Error: The chosen project folder already exists."
	exit
fi

printTitle "Creating React Sequelize App: "$1""

echo "Adding preferred file structure..."
mkdir $1
cd $1

git clone https://github.com/dv16sen/create-react-app.git
rm -rf ./create-react-app/.git
cp -r ./create-react-app/. "$PWD"/client
rm -rf ./create-react-app

git clone https://github.com/dv16sen/sequelize-typescript-express.git
rm -rf ./sequelize-typescript-express/.git
cp -r ./sequelize-typescript-express/. "$PWD"/
rm -rf ./sequelize-typescript-express

git clone https://github.com/dv16sen/react-scss-framework.git
cp -r ./react-scss-framework/src/sass/. "$PWD"/client/src/sass/
rm -rf ./react-scss-framework

echo "Installing dependencies..."
npm upgrade
npm install
cd client
npm upgrade
npm install
echo -e "\n Happy Hacking! \n"

printEndOfSection
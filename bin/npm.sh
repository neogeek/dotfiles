#!/bin/bash

for dir in {~/.npm,/usr/local/bin,/usr/local/lib/node_modules}; do

    if [ ! -w "$dir" ]; then

        echo "Fixing file permissions on $dir"

        sudo chown -R "$(whoami)" "$dir"

    fi

done

if [ ! -a ~/.nvm/nvm.sh ]; then

    echo "Installing NVM"

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash

fi

# shellcheck disable=SC1090
source ~/.nvm/nvm.sh

nvm install 4
nvm install 5
nvm install 6
nvm alias default system

NPMLISTCACHE=$(npm list -g --depth=0)
NPMOUTDATEDCACHE=$(npm outdated -g --depth=0)

npminstall () {

    if ! echo "${NPMLISTCACHE}" | grep " ${1}@" &> /dev/null; then

        npm install -g "$1"

    elif echo "${NPMOUTDATEDCACHE}" | grep "^${1}" &> /dev/null; then

        echo -n "Updating $1 ... "

        npm update -g "$1"

        echo "Done"

    fi

}

npm config set prefix ~/npm
npm config set save=true
npm config set save-exact=true

npm -g install npm@latest

npminstall "cloc"
npminstall "csslint"
npminstall "doxdox"
npminstall "electron-prebuilt"
npminstall "eslint"
npminstall "firebase-tools"
npminstall "greenkeeper"
npminstall "grunt-cli"
npminstall "jshint"
npminstall "jslint"
npminstall "mailmake"
npminstall "mocha"
npminstall "nodemon"
npminstall "nsp"
npminstall "pm2"
npminstall "react-native-cli"
npminstall "react-tools"
npminstall "spire-of-babel"
npminstall "svgo"

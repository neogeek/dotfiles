#!/bin/bash

for dir in {~/.npm,/usr/local/lib/node_modules}; do

    if [ ! -w "$dir" ]; then

        echo "Fixing file permissions on $dir"

        sudo chown -R "$(whoami)" "$dir"

    fi

done

if [ ! -a ~/.nvm/nvm.sh ]; then

    echo "Installing NVM"

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

fi

# shellcheck disable=SC1090
source ~/.nvm/nvm.sh

nvm install 0.10
nvm install 0.12
nvm install 4
nvm install 5
nvm install 6
nvm use system

NPMLISTCACHE=$(npm list -g --depth=0)
NPMOUTDATEDCACHE=$(npm outdated -g --depth=0)

npminstall () {

    if ! echo "${NPMLISTCACHE}" | grep " ${1}@" &> /dev/null; then

        npm install -g "$1"

    elif echo "${NPMOUTDATEDCACHE}" | grep "^${1}" &> /dev/null; then

        echo -n "Updating $1 ... "

        npm install -g "$1"

        echo "Done"

    fi

}

npm -g install npm@latest

npminstall "bower"
npminstall "cloc"
npminstall "csslint"
npminstall "doxdox"
npminstall "electron-prebuilt"
npminstall "firebase-tools"
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

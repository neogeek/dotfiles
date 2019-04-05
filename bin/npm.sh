#!/bin/bash

for dir in {~/.npm,/usr/local/bin,/usr/local/lib/node_modules}; do

    if [ ! -w "$dir" ]; then

        echo "Fixing file permissions on $dir"

        sudo chown -R "$(whoami)" "$dir"

    fi

done

if [ ! -a ~/.nvm/nvm.sh ]; then

    echo "Installing NVM"

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

fi

# shellcheck disable=SC1090
source ~/.nvm/nvm.sh

nvm install 10
nvm install 11
nvm alias default 11

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
npm config set progress=true

npm -g install npm@latest

npminstall "doxdox"
npminstall "eslint"
npminstall "firebase-tools"
npminstall "mailmake"
npminstall "mocha"
npminstall "nodemon"
npminstall "npm-check-updates"
npminstall "pm2"
npminstall "react-native-cli"
npminstall "react-tools"
npminstall "spire-of-babel"
npminstall "svgo"

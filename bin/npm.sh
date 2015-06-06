#!/bin/bash

for dir in {~/.npm,/usr/local/lib/node_modules}; do

    if [ ! -O "$dir" ]; then

        echo "Fixing file permissions on $dir"

        sudo chown -R "$(whoami)" "$dir"

    fi

done

if [ ! -a ~/.nvm/nvm.sh ]; then

    echo "Installing NVM"

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

fi

source ~/.nvm/nvm.sh

nvm install 0.10
nvm install 0.12
nvm use system

NPMLISTCACHE=$(npm list -g --depth=0)

npminstall () {

    if ! echo "${NPMLISTCACHE}" | grep " ${1}@" &> /dev/null; then

        npm install -g "$1"

    else

        echo -n "Updating $1 ... "

        npm update -g "$1"

        echo "Done"

    fi

}

npminstall "bower"
npminstall "coffee-script"
npminstall "csslint"
npminstall "doxdox"
npminstall "electron-prebuilt"
npminstall "grunt-cli"
npminstall "jshint"
npminstall "jslint"
npminstall "mailmake"
npminstall "mocha"
npminstall "nodemon"

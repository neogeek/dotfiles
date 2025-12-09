#!/bin/bash

for DIR in {~/.npm,/usr/local/bin,/usr/local/lib/node_modules}; do

    if [[ -d "${DIR}" && ! -w "${DIR}" ]]; then

        echo "Fixing file permissions on ${DIR}"

        sudo chown -R "$(whoami)" "${DIR}"

    fi

done

if [ ! -e ~/.nvm/nvm.sh ]; then
    echo "Installing NVM"

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
fi

# shellcheck disable=SC1090
source ~/.nvm/nvm.sh

nvm install 22 --latest-npm
nvm install 24 --latest-npm

nvm alias default 24

nvm use 24

npm config set save=true
npm config set save-exact=true
npm config set progress=true
npm config set ignore-scripts=true

npm install -g npm@latest

npm install -g get-unity
npm install -g nodemon
npm install -g npm-check-updates
npm install -g pm2
npm install -g svgo
npm install -g unity-check-updates

if [[ $(cat ~/.zshrc) != *"begin-npm-completion"* ]]; then
    npm completion >>~/.zshrc
fi

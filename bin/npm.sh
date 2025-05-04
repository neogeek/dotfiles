#!/bin/bash

for DIR in {~/.npm,/usr/local/bin,/usr/local/lib/node_modules}; do

    if [[ -d "${DIR}" && ! -w "${DIR}" ]]; then

        echo "Fixing file permissions on ${DIR}"

        sudo chown -R "$(whoami)" "${DIR}"

    fi

done

if [ ! -a ~/.nvm/nvm.sh ]; then
    echo "Installing NVM"

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
fi

# shellcheck disable=SC1090
source ~/.nvm/nvm.sh

PREVIOUS_DEFAULT_VERSION=$(node --version)

nvm install 20 --latest-npm
nvm install 22 --latest-npm

nvm alias default 20

npm config set save=true
npm config set save-exact=true
npm config set progress=true

if [[ "${PREVIOUS_DEFAULT_VERSION}" != $(node --version) ]]; then
    npm install -g get-unity
    npm install -g nodemon
    npm install -g npm-check-updates
    npm install -g pm2
    npm install -g svgo
    npm install -g unity-check-updates
fi

if [[ $(cat ~/.zshrc) != *"begin-npm-completion"* ]]; then
    npm completion >>~/.zshrc
fi

if [[ $(cat ~/.zshrc) != *"begin-npm-completion"* ]]; then
    npm completion >>~/.zshrc
fi

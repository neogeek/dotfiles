#!/bin/bash

for DIR in {~/.npm,/usr/local/bin,/usr/local/lib/node_modules}; do

    if [[ -d "${DIR}" && ! -w "${DIR}" ]]; then

        echo "Fixing file permissions on ${DIR}"

        sudo chown -R "$(whoami)" "${DIR}"

    fi

done

if [ ! -a ~/.nvm/nvm.sh ]; then

    echo "Installing NVM"

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.39.5/install.sh | bash

fi

# shellcheck disable=SC1090
source ~/.nvm/nvm.sh

PREVIOUS_DEFAULT_VERSION=$(node --version)

nvm install 16 --lts
nvm install 18 --lts
nvm install 20 --latest-npm

nvm alias default 20

npm config set save=true
npm config set save-exact=true
npm config set progress=true

if [[ "${PREVIOUS_DEFAULT_VERSION}" != $(node --version) ]]; then
    npm install -g get-unity
    npm install -g nodemon
    npm install -g npm-check-updates
    npm install -g pm2
    npm install -g snyk
    npm install -g spire-of-babel
    npm install -g svgo
    npm install -g unity-check-updates
fi

if [[ $(cat ~/.bashrc) != *"begin-npm-completion"* ]]; then
    npm completion >>~/.bashrc
fi

if [[ $(cat ~/.zshrc) != *"begin-npm-completion"* ]]; then
    npm completion >>~/.zshrc
fi

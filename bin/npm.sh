#!/bin/bash

for dir in {~/.npm,/usr/local/bin,/usr/local/lib/node_modules}; do

    if [ ! -w "$dir" ]; then

        echo "Fixing file permissions on $dir"

        sudo chown -R "$(whoami)" "$dir"

    fi

done

if [ ! -a ~/.nvm/nvm.sh ]; then

    echo "Installing NVM"

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.1/install.sh | bash

fi

# shellcheck disable=SC1090
source ~/.nvm/nvm.sh

nvm install 10
nvm install 12

nvm alias default 12

npm config set save=true
npm config set save-exact=true
npm config set progress=true

npm -g install npm@latest

npm install -g firebase-tools
npm install -g nodemon
npm install -g npm-check-updates
npm install -g spire-of-babel
npm install -g svgo

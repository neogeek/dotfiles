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
nvm use stable

npm install -g bower
npm install -g coffee-script
npm install -g csslint
npm install -g doxdox
npm install -g electron-prebuilt
npm install -g grunt-cli
npm install -g jslint
npm install -g mailmake
npm install -g mocha
npm install -g nodemon

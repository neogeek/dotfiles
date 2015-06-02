#!/bin/bash

for dir in {~/.npm,/usr/local/lib/node_modules}; do

    if [ ! -O "$dir" ]; then

        echo "Fixing file permissions on $dir"

        sudo chown -R "$(whoami)" "$dir"

    fi

done

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

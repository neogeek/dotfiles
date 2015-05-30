#!/bin/bash

sudo chown -R $(whoami) ~/.npm
sudo chown -R $(whoami) /usr/local/lib/node_modules

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

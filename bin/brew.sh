#!/bin/bash

if ! hash brew &> /dev/null; then

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

brew update && brew doctor

brew upgrade --all

brew install heroku
brew install mongodb
brew install node
brew install phantomjs
brew install redis
brew install webkit2png

brew cleanup

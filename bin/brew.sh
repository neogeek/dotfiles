#!/bin/bash

if ! brew -v &> /dev/null; then

    echo "Installing brew"

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

sudo -v

brew update && brew doctor

brew upgrade --all

brew install caskroom/cask/brew-cask

brew cask install virtualbox
brew cask install dockertoolbox

brew install git && brew link --overwrite git
brew install heroku
brew install flow
brew install imagemagick
brew install mongodb
brew install phantomjs
brew install postgres
brew install redis
brew install shellcheck
brew install watchman
brew install webkit2png

brew cleanup

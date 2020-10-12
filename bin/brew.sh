#!/bin/bash

if ! brew -v &>/dev/null; then

    echo "Installing brew"

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

sudo -v

brew update && brew doctor

brew upgrade

brew install git && brew link --overwrite git
brew install git-lfs && git lfs install
brew tap heroku/brew && brew install heroku
brew install hub
brew install imagemagick
brew install shellcheck

brew cleanup --prune-prefix

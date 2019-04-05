#!/bin/bash

if ! brew -v &> /dev/null; then

    echo "Installing brew"

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

sudo -v

brew update && brew doctor

brew upgrade

brew install asciinema
brew install git && brew link --overwrite git
brew install git-lfs && git lfs install
brew tap heroku/brew && brew install heroku
brew install highlight
brew install imagemagick ghostscript
brew tap mongodb/brew && brew install mongodb-community@4.0
brew install postgres
brew install redis
brew install shellcheck
brew install watchman
brew install webkit2png

brew cleanup --prune-prefix

#!/bin/bash

if ! brew -v &> /dev/null; then

    echo "brew is not installed. run brew.sh before re-running this script."

    exit 0;

fi

brew tap caskroom/cask

brew cask cleanup

brew cask install atom
brew cask install dash
brew cask install docker-toolbox
brew cask install dropbox
brew cask install firefox
brew cask install fontbase
brew cask install google-chrome
brew cask install iterm2
brew cask install sketch
brew cask install spotify
brew cask install steam
brew cask install virtualbox
brew cask install visual-studio-code

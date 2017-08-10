#!/bin/bash

if ! brew -v &> /dev/null; then

    echo "brew is not installed. run brew.sh before re-running this script."

    exit 0;

fi

brew tap caskroom/cask

brew cask cleanup

brew cask install alfred
brew cask install dash
brew cask install dropbox
brew cask install fontbase
brew cask install github-desktop
brew cask install google-chrome
brew cask install iterm2
brew cask install postgres
brew cask install postico
brew cask install sketch
brew cask install spotify
brew cask install steam
brew cask install virtualbox
brew cask install visual-studio-code

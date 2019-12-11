#!/bin/bash

if ! brew -v &> /dev/null; then

    echo "brew is not installed. run brew.sh before re-running this script."

    exit 0;

fi

brew tap homebrew/cask-cask
brew tap buo/cask-upgrade

brew cask install 1password
brew cask install alfred
brew cask install dash
brew cask install discord
brew cask install docker-toolbox
brew cask install dropbox
brew cask install fontbase
brew cask install github
brew cask install google-chrome
brew cask install imageoptim
brew cask install itch
brew cask install iterm2
brew cask install kap
brew cask install postgres
brew cask install postico
brew cask install sketch
brew cask install spotify
brew cask install steam
brew cask install tunnelbear
brew cask install twitch
brew cask install unity-hub
brew cask install virtualbox
brew cask install visual-studio
brew cask install visual-studio-code

brew cask cleanup

brew cu

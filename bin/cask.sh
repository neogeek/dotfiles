#!/bin/bash

if ! brew -v &>/dev/null; then

    echo "brew is not installed. run brew.sh before re-running this script."

    exit 0

fi

brew tap homebrew/cask-versions

brew install --cask 1password
brew install --cask alfred
brew install --cask dash
brew install --cask discord
brew install --cask docker-toolbox
brew install --cask dropbox
brew install --cask fontbase
brew install --cask github
brew install --cask google-chrome
brew install --cask google-cloud-sdk
brew install --cask imageoptim
brew install --cask itch
brew install --cask iterm2
brew install --cask kap
brew install --cask ngrok
brew install --cask postgres
brew install --cask postico
brew install --cask sketch
brew install --cask spotify
brew install --cask steam
brew install --cask sublime-text
brew install --cask sublime-merge
brew install --cask tunnelbear
brew install --cask twitch
brew install --cask unity-hub
brew install --cask virtualbox
brew install --cask visual-studio
brew install --cask visual-studio-code

brew cleanup

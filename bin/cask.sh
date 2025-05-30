#!/bin/bash

if ! brew -v &>/dev/null; then

    echo "brew is not installed. run brew.sh before re-running this script."

    exit 0

fi

brew install --cask 1password
brew install --cask alfred
brew install --cask android-platform-tools
brew install --cask audacity
brew install --cask discord
brew install --cask docker
brew install --cask dropbox
brew install --cask epic-games
brew install --cask figma
brew install --cask fontbase
brew install --cask fork
brew install --cask github
brew install --cask godot
brew install --cask godot-mono
brew install --cask google-chrome
brew install --cask google-cloud-sdk
brew install --cask imageoptim
brew install --cask iterm2
brew install --cask jetbrains-toolbox
brew install --cask keycastr
brew install --cask ngrok
brew install --cask notion
brew install --cask obs
brew install --cask postico
brew install --cask slack
brew install --cask spotify
brew install --cask steam
brew install --cask sublime-merge
brew install --cask sublime-text
brew install --cask tunnelbear
brew install --cask unity-hub
brew install --cask visual-studio-code
brew install --cask zed
brew install --cask zoom

brew cleanup

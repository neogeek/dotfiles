#!/bin/bash

if ! brew -v &>/dev/null; then

    echo "Installing brew"

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

sudo -v

brew update && brew doctor

brew upgrade

brewinstallpackage() {

    if ! brew ls --versions "${1}" >/dev/null; then
        brew install "${1}"
    fi

}

brewinstallpackage "cloc"
brewinstallpackage "git"
brewinstallpackage "git-lfs"
brew tap heroku/brew && brewinstallpackage "heroku"
brewinstallpackage "hub"
brewinstallpackage "gh"
brewinstallpackage "imagemagick"
brewinstallpackage "shellcheck"

brew cleanup --prune-prefix

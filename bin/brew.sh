#!/bin/bash

if ! brew -v &>/dev/null; then

    echo "Installing brew"

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

    # shellcheck disable=SC2016
    (echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >>~/.zprofile

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
brewinstallpackage "diff-so-fancy"
brewinstallpackage "git"
brewinstallpackage "git-lfs"
brewinstallpackage "imagemagick"
brewinstallpackage "redis"
brewinstallpackage "shellcheck"

brew cleanup --prune-prefix

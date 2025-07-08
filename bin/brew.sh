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

brewinstallpackage "act"
brewinstallpackage "cloc"
brewinstallpackage "diff-so-fancy"
brewinstallpackage "git-lfs"
brewinstallpackage "git"
brewinstallpackage "imagemagick"
brewinstallpackage "llvm"
brewinstallpackage "shellcheck"

sudo mkdir -p /usr/local/bin/

sudo ln -s "$(brew --prefix llvm)/bin/clang-format" "/usr/local/bin/clang-format"
sudo ln -s "$(brew --prefix llvm)/bin/clang-tidy" "/usr/local/bin/clang-tidy"
sudo ln -s "$(brew --prefix llvm)/bin/clang-apply-replacements" "/usr/local/bin/clang-apply-replacements"

brew cleanup --prune-prefix

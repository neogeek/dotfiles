#!/bin/bash

# shellcheck disable=SC2128
DIR=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

if ! omz -v &>/dev/null; then
    # Install ohmyzsh

    echo -n "Installing ohmyzsh ... "

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    [ -f /usr/local/share/zsh ] && chmod 755 /usr/local/share/zsh
    [ -f /usr/local/share/zsh/site-functionsh ] && chmod 755 /usr/local/share/zsh/site-functions

    echo "Done"

    echo -n "Installing @neogeek's dotfiles to ~/.zshrc ... "

    if [ -f ~/.zshrc ]; then

        mv ~/.zshrc ~/.zshrc-backup

    fi

    cp "${DIR}/.zshrc" ~/.zshrc

    echo "Done"

    # shellcheck disable=SC1090
    zsh ~/.zshrc
fi

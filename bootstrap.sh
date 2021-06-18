#!/bin/bash

# shellcheck disable=SC2128
DIR=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

# Install Git Plugins

echo -n "Installing (1) git plugins ... "

mkdir -p "${DIR}/vendor/"

curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy -o "${DIR}/vendor/diff-so-fancy" &>/dev/null
chmod +x "${DIR}/vendor/diff-so-fancy"

echo "Done"

# Install ohmyzsh

echo -n "Installing ohmyzsh ... "

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions

echo "Done"

# Update .zshrc

echo -n "Installing @neogeek's dotfiles to ~/.zshrc ... "

if [ -f ~/.zshrc ]; then

    mv ~/.zshrc ~/.zshrc-backup

fi

cp "${DIR}/.zshrc" ~/.zshrc

echo "Done"

# shellcheck disable=SC1090
zsh ~/.zshrc

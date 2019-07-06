#!/bin/bash

# shellcheck disable=SC2128
DIR=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

# Install Git Plugins

echo -n "Installing (3) git plugins ... "

mkdir -p "${DIR}/vendor/"

curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy -o "${DIR}/vendor/diff-so-fancy" &> /dev/null
chmod +x "${DIR}/vendor/diff-so-fancy"

echo "Done"

# Update .bash_profile

echo -n "Installing @neogeek's dotfiles to ~/.bash_profile ... "

touch ~/.bash_profile

sed -ie "/#dotfiles/d" ~/.bash_profile

echo "source ${DIR}/.bash_profile #dotfiles" >> ~/.bash_profile

echo "Done"

# shellcheck disable=SC1090
source ~/.bash_profile

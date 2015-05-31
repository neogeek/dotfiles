#!/bin/bash

DIR=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

echo -n "Installing @neogeek's dotfiles to ~/.bash_profile ... "

touch ~/.bash_profile

sed -ie "/#dotfiles/d" ~/.bash_profile

echo "source ${DIR}/.bash_profile #dotfiles" >> ~/.bash_profile

echo "Done"

source ~/.bash_profile

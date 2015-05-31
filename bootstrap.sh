#!/bin/bash

DIR=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

touch ~/.bash_profile

sed -ie "/#dotfiles/d" ~/.bash_profile

echo "source ${DIR}/.bash_profile #dotfiles" >> ~/.bash_profile

source ~/.bash_profile

#!/bin/bash

# shellcheck disable=SC2128
DIR=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

# Install Git Plugins

echo -n "Installing (3) git plugins ... "

mkdir -p "${DIR}/vendor/"

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o "${DIR}/vendor/git-completion.bash" &> /dev/null
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o "${DIR}/vendor/git-prompt.bash" &> /dev/null
curl https://raw.githubusercontent.com/git/git/master/contrib/diff-highlight/diff-highlight -o "${DIR}/vendor/diff-highlight" &> /dev/null
chmod +x "${DIR}/vendor/diff-highlight"

echo "Done"

# Update .bash_profile

echo -n "Installing @neogeek's dotfiles to ~/.bash_profile ... "

touch ~/.bash_profile

sed -ie "/#dotfiles/d" ~/.bash_profile

echo "source ${DIR}/.bash_profile #dotfiles" >> ~/.bash_profile

echo "Done"

# shellcheck disable=SC1090
source ~/.bash_profile

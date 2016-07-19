#!/bin/bash

if ! brew -v &> /dev/null; then

    echo "brew is not installed. run brew.sh before re-running this script."

    exit 0;

fi

brew install gpg gpg-agent pinentry-mac

if hash gpg &> /dev/null; then

    git config --global commit.gpgsign true
    git config --global gpg.program /usr/local/bin/gpg

fi

if [ -d ~/.gnupg/ ]; then

    sed -ie "/no-tty/d" ~/.gnupg/gpg.conf

    echo "no-tty" >> ~/.gnupg/gpg.conf

fi

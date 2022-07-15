#!/bin/bash

if ! brew -v &>/dev/null; then

    echo "brew is not installed. run brew.sh before re-running this script."

    exit 0

fi

brew install gnupg pinentry-mac

if hash gpg &>/dev/null; then

    git config --global commit.gpgsign true
    git config --global gpg.program "$(which gpg)"

fi

if [ -d ~/.gnupg/ ]; then

    sed -ie "/no-tty/d" ~/.gnupg/gpg.conf
    sed -ie "/use-agent/d" ~/.gnupg/gpg.conf

    echo "no-tty" >>~/.gnupg/gpg.conf
    echo "use-agent" >>~/.gnupg/gpg.conf

    sed -ie "/pinentry-program \/usr\/homebrew\/bin\/pinentry-mac/d" ~/.gnupg/gpg-agent.conf

    echo "pinentry-program $(which pinentry-mac)" >>~/.gnupg/gpg-agent.conf

fi

gpgconf --kill gpg-agent

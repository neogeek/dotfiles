#!/bin/bash

if ! brew -v &> /dev/null; then

    echo "brew is not installed. run brew.sh before re-running this script."

    exit 0;

fi

brew install rbenv ruby-build

if ! grep -Fq "rbenv init -" ~/.bash_profile; then

    #shellcheck disable=SC2016
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

fi

# shellcheck disable=SC1091
source ~/.bash_profile

if ! grep "2.2.3" <<< "$(rbenv version)"; then

    rbenv install 2.2.3
    rbenv global 2.2.3

fi

gem update --system

gem install bundler
gem install cocoapods
gem install foreman
gem install jekyll
gem install travis

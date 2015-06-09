#!/bin/bash

if ! brew -v &> /dev/null; then

    echo "brew is not installed. run brew.sh before re-running this script."

    exit 0;

fi

brew install rbenv

if ! grep -Fq "rbenv init -" ~/.bash_profile; then

    #shellcheck disable=SC2016
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

fi

source ~/.bash_profile

rbenv install 2.2.2
rbenv global 2.2.2

gem update --system

gem install jekyll
gem install travis

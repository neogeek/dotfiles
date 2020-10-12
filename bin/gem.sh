#!/bin/bash

if ! brew -v &>/dev/null; then

    echo "brew is not installed. run brew.sh before re-running this script."

    exit 0

fi

brew install rbenv ruby-build

if ! grep -Fq "rbenv init -" ~/.bash_profile; then

    #shellcheck disable=SC2016
    echo 'eval "$(rbenv init -)"' >>~/.bash_profile

fi

# shellcheck disable=SC1090
source ~/.bash_profile

if ! grep "2.7.2" <<<"$(rbenv version)"; then

    rbenv install 2.7.2
    rbenv global 2.7.2

fi

gem update --system

gem install bundler
gem install foreman
gem install github_changelog_generator
gem install jekyll

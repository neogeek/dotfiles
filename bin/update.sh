#!/bin/bash

DIR=$(cd "$(dirname "${BASH_SOURCE}")" && cd ../ && pwd)

echo -n "Updating dotfiles to latest ... "

(cd "${DIR}" && git pull &> /dev/null)

echo "Done"

(cd "${DIR}" && source bootstrap.sh)

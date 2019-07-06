#!/bin/zsh

DIR=$(dirname "${0}")

export PATH="${DIR}/bin:${PATH}";

for file in "${DIR}"/.{aliases,custom,functions,gitsetup}; do
    if [ -f "${file}" ]; then
        source "${file}"
    fi
done

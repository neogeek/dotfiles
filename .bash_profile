#!/bin/bash

DIR=$(dirname "${BASH_SOURCE}")

export PATH="${DIR}/bin:${PATH}";

for file in "${DIR}"/.{aliases,custom,functions,gitsetup,theme}; do
    if [ -a "$file" ]; then
        # shellcheck source=/dev/null
        source "${file}"
    fi
done

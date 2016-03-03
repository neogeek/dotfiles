#!/bin/bash

# shellcheck disable=SC2128
DIR=$(dirname "${BASH_SOURCE}")

export PATH="${DIR}/bin:${PATH}";

for file in "${DIR}"/.{aliases,custom,functions,gitsetup,theme}; do
    if [ -f "$file" ]; then
        # shellcheck source=/dev/null
        source "${file}"
    fi
done

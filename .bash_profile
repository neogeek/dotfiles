#!/bin/bash

DIR=$(dirname "${0:a}")

export PATH="${DIR}/bin:${PATH}"

for file in "${DIR}"/.{aliases,custom,functions,gitsetup}; do
    if [ -f "${file}" ]; then
        # shellcheck source=/dev/null
        source "${file}"
    fi
done

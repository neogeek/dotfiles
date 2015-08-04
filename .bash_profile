#!/bin/bash

DIR=$(dirname "${BASH_SOURCE}")

export PATH="${DIR}/bin:${PATH}";

for file in "${DIR}"/.{functions,theme,aliases,custom}; do
    if [ -a "$file" ]; then
        source "${file}"
    fi
done

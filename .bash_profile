#!/bin/bash

DIR=$(dirname "${BASH_SOURCE}")

export PATH="${DIR}/bin:${PATH}";

for file in "${DIR}"/.{functions,theme,aliases,custom}; do
    source "${file}"
done

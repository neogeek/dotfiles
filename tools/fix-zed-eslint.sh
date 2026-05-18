#!/bin/bash

(

    ESLINT_PATH=$(find ~/Library/Application\ Support/Zed/languages/eslint/ -type d -depth 1)

    cd "${ESLINT_PATH}/vscode-eslint"

    npm install && npm run postinstall && npm run webpack

    cd "${ESLINT_PATH}/vscode-eslint/server"

    npm install && npm run webpack

)

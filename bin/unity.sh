#!/bin/bash

CWD=$(dirname "${BASH_SOURCE[0]}")

UNITY_TEMPLATE_DIR=/Applications/Unity/Unity.app/Contents/Resources/ScriptTemplates

if [ -d $UNITY_TEMPLATE_DIR ]; then

    cp -R "${CWD}/../unity/scripttemplates/" $UNITY_TEMPLATE_DIR

fi

(cd /Applications/Unity/Unity.app/Contents/Resources/PackageManager && sudo chown -R $(whoami) Editor)

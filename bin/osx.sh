#!/bin/bash

echo -n "Changing OS X specific settings ... "

# Disable default iTunes behavior with media keys in OSX.
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist &> /dev/null

# Disable animation while opening and closing windows and popups.
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

echo "Done"

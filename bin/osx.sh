#!/bin/bash

echo -n "Changing OS X specific settings ... "

# System Preferences

## General

### Show scroll bars: _Always_

defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

### Disable Window Animations

defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

## Keyboard

### Shortcuts

#### Full Keyboard Access: In windows and dialogs, press Tab to move keyboard between: _All controls_.
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2

# Finder Preferences

## Hide _Hard disks_, _External disks_, _CDs, DVDs, and iPods_, and _Connected servers_ from desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false

## Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

## When performing a search: _Search the Current Folder_
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Mouse

## Scroll direction: _natural_
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true
# Safari

## Homepage
defaults write com.apple.Safari HomePage -string "about:blank"

## Show Developer menu in menu bar
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Other

## Disable default iTunes behavior with media keys in OSX.
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist &> /dev/null

## Remove Shadow from OS X Screenshots
defaults write com.apple.screencapture disable-shadow -bool true

killall SystemUIServer

echo "Done"

#!/bin/bash

echo -n "Changing OS X specific settings ... "

# System Preferences

## General

### Show scroll bars: _Always_
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

### Disable Window Animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

## Keyboard

### Full Keyboard Access: In windows and dialogs, press Tab to move keyboard between: _All controls_.
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2

## Mouse

### Scroll direction: _natural_
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

## Trackpad

### Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

## Screensaver

### Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Safari

## Homepage
defaults write com.apple.Safari HomePage -string "about:blank"

## Show Developer menu in menu bar
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Finder

## Preferences

### Hide _Hard disks_, _External disks_, _CDs, DVDs, and iPods_, and _Connected servers_ from desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false

### New Finder window shows: _Desktop_
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"

### Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

### Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

### Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

### When performing a search: _Search the Current Folder_
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

### Use list view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Other

## Disable default iTunes behavior with media keys in OSX.
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist &>/dev/null

## Remove Shadow from OS X Screenshots
defaults write com.apple.screencapture disable-shadow -bool true

killall SystemUIServer

echo "Done"

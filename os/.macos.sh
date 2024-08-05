#!/bin/sh

# ~/.osx — http://mths.be/osx
# originally sourced from: https://github.com/jaredpalmer/dotfile
# Useful links
# https://macos-defaults.com/


# Ask for the administrator password upfront
# sudo -v

UPDATES_MADE=false

function updateDefaultsIfNeeded() {
	DOMAIN=$1
	KEY=$2
	TYPE=$3
	VALUE=$4
	BOOL_VALUE=$4

	if [ $TYPE = "-bool" ] && $4; then
		BOOL_VALUE=1
	elif [ "$TYPE" = "-bool" ]; then
		BOOL_VALUE=0
	fi
	

	if ! [ "$(defaults read "$DOMAIN" "$KEY")" = "$BOOL_VALUE" ]; then
		defaults write "$DOMAIN" "$KEY" $TYPE $VALUE
		UPDATES_MADE=true
	fi
}


# Expand save panel by default
updateDefaultsIfNeeded NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
updateDefaultsIfNeeded NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
updateDefaultsIfNeeded NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
updateDefaultsIfNeeded NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Automatically quit printer app once the print jobs complete
updateDefaultsIfNeeded com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
updateDefaultsIfNeeded com.apple.LaunchServices LSQuarantine -bool false

# Increase sound quality for Bluetooth headphones/headsets
updateDefaultsIfNeeded com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Change Location of Screenshots
updateDefaultsIfNeeded com.apple.screencapture "location" -string "~/Pictures/Screenshots"


# Finder

# Finder: show hidden files by default
updateDefaultsIfNeeded com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
updateDefaultsIfNeeded NSGlobalDomain AppleShowAllExtensions -bool true


# Finder: show path bar
updateDefaultsIfNeeded com.apple.finder ShowPathbar -bool true

# Finder: allow text selection in Quick Look
updateDefaultsIfNeeded com.apple.finder QLEnableTextSelection -bool true


# Enable spring loading for directories
updateDefaultsIfNeeded NSGlobalDomain com.apple.springing.enabled -bool true

# Remove the spring loading delay for directories
updateDefaultsIfNeeded NSGlobalDomain com.apple.springing.delay -float 0

# Avoid creating .DS_Store files on network volumes
updateDefaultsIfNeeded com.apple.desktopservices DSDontWriteNetworkStores -bool true


# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
updateDefaultsIfNeeded com.apple.finder FXPreferredViewStyle -string "Nlsv"


# Show the ~/Library folder
chflags nohidden ~/Library

if $UPDATES_MADE ; then
	echo "Updating macOS User Defaults..."
	for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
		"Dock" "Finder" "Mail" "Messages" "Safari" "SizeUp" "SystemUIServer" \
		"Terminal" "Transmission" "Twitter" "iCal"; do
		killall "${app}" > /dev/null 2>&1
	done
fi


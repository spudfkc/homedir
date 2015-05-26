#!/bin/bash

readonly SCRIPT_DIR=$(dirname $0)
readonly INSTALLED_PACKAGES_SRC="$SCRIPT_DIR/sublime-packages"
readonly BASE_DEST="~/Library/Application Support/Sublime Text 3"
readonly INSTALLED_PACKAGES_DEST="$BASE_DEST/Installed Packages"
readonly SETTINGS_SRC="$SCRIPT_DIR/sublime-settings/User"
readonly SETTINGS_DEST="$BASE_DEST/Packages/User"

ln -sv $INSTALLED_PACKAGES_SRC $INSTALLED_PACKAGES_DEST
ln -sv $SETTINGS_SRC/* $SETTINGS_DEST

echo '.done'

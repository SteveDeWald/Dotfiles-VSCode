#!/bin/bash

# Prompt for confirmation
echo "Warning: this will overwrite your existing configuration files."
read -p "Are you sure you want to do this? (y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

# Symlink configuration files
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ln -sfh "$DIR"/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sfh "$DIR"/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# Install extensions
cat extensions.txt | xargs -L 1 code --install-extension

# Enable keyboard repeat
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false         # For VS Code
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false # For VS Code Insider

# Dotfiles for VS Code

These are an opinionated set of configuration files for Visual Studio Code.

## Setup

### Step 1

Clone the repository to a directory of your choice (e.g. `~/.vscode`):

```sh
git clone https://github.com/SteveDeWald/Dotfiles-VSCode.git ~/.vscode
```

Change into that directory:

```sh
cd ~/.vscode
```

### Step 2

Symlink the configuration files to the VS Code folders:

```sh
ln -s settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
```

### Step 3

Open this project in VS Code to install the recommended extensions. If
you have the `code` command added to your path you can just do:

```sh
code .
```

### Step 4

Do yourself a favor and enable keyboard repeat in Code:

```sh
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
```

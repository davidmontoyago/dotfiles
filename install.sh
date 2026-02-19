#!/bin/bash
set -u -o pipefail
source ./functions.sh

bash ./homebrew/install.sh

bash ./oh-my-zsh/install.sh

bash ./tmux/configure.sh

bash ./vscode/configure.sh

bash ./vim/configure.sh

install_dotfile ".bash_profile"
install_dotfile ".bashrc"
install_dotfile ".devopsrc"
install_dotfile ".gitconfig"
install_dotfile "settings.json" "cursor"  "$HOME/Library/ApplicationSupport/Cursor/User"

bash ./git-secrets/configure.sh

bash ./gnupg/configure.sh

bash ./golang/configure.sh

printf "\ndone." && chsh -s $(which zsh) && zsh

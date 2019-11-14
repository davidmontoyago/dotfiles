#!/bin/bash
set -u -o pipefail
source ./functions.sh

bash ./homebrew/install.sh

bash ./oh-my-zsh/install.sh

bash ./tmux/configure.sh

bash ./atom/configure.sh

bash ./vim/configure.sh

install_dotfile ".bash_profile"
install_dotfile ".bashrc"
install_dotfile ".devopsrc"
install_dotfile ".gitconfig"

bash ./git-secrets/configure.sh

bash ./golang/configure.sh

printf "\ndone." && chsh -s $(which zsh) && zsh

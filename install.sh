#!/bin/bash
set -u -o pipefail
source ./functions.sh

install_dotfile "Brewfile" "homebrew"
bash ./homebrew/install.sh

install_dotfile ".zshrc" "oh-my-zsh"
bash ./oh-my-zsh/install.sh

bash ./tmux/configure.sh

install_dotfile "config.cson" "atom" "$HOME/.atom"
bash ./atom/configure.sh

install_dotfile ".vimrc" "vim"
bash ./vim/configure.sh

install_dotfile ".bash_profile"
install_dotfile ".bashrc"
install_dotfile ".devopsrc"
install_dotfile ".gitconfig"

bash ./git-secrets/configure.sh

bash ./golang/configure.sh

printf "\ndone." && chsh -s $(which zsh) && zsh

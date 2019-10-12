#!/bin/bash
set -u -o pipefail
source ./functions.sh

install_dotfile "Brewfile" "homebrew"
bash ./homebrew/install.sh

install_dotfile ".zshrc" "oh-my-zsh"
bash ./oh-my-zsh/install.sh

install_dotfile ".tmux.conf" "tmux"
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

# init workspace
test -d "$HOME/projects/go" || mkdir -p "$HOME/projects/go"
test -d "$HOME/bin" || mkdir -p "$HOME/bin"

printf "\ndone." && chsh -s $(which zsh) && zsh

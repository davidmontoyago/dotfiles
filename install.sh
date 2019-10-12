#!/bin/bash
set -u -o pipefail

function install_dotfile() {
  DOTFILE=$1
  SRCDIR=${2:-./}
  STAMP=$(date '+%Y-%m-%d-%H%M%S')
  if [ -e $HOME/$DOTFILE ]; then
    echo "backing up previous $DOTFILE..."
    mv $HOME/$DOTFILE "$HOME/$DOTFILE-backup-$STAMP"
  fi

  cp $SRCDIR/$DOTFILE $HOME
  echo "installed $DOTFILE"
}

install_dotfile "Brewfile" "homebrew"
bash ./homebrew/install.sh

install_dotfile ".zshrc" "oh-my-zsh"
bash ./oh-my-zsh/install.sh

install_dotfile ".tmux.conf" "tmux"
bash ./tmux/configure.sh

install_dotfile ".bash_profile"
install_dotfile ".bashrc"
install_dotfile ".devopsrc"
install_dotfile ".gitconfig"
install_dotfile ".vimrc"

echo "switching to zsh..."
zsh

echo "sourcing now..."
source ~/.zshrc

echo "done."

#!/bin/bash
set -u -o pipefail

function install_dotfile() {
  DOTFILE=$1
  SRCDIR=${2:-./}
  DESTDIR=${3:-$HOME}
  STAMP=$(date '+%Y-%m-%d-%H%M%S')
  if [ -e $DESTDIR/$DOTFILE ]; then
    echo "backing up previous $DOTFILE..."
    mv $DESTDIR/$DOTFILE "$DESTDIR/$DOTFILE-backup-$STAMP"
  fi

  cp $SRCDIR/$DOTFILE $DESTDIR
  echo "installed $DESTDIR/$DOTFILE"
}

install_dotfile "Brewfile" "homebrew"
bash ./homebrew/install.sh

install_dotfile ".zshrc" "oh-my-zsh"
bash ./oh-my-zsh/install.sh

install_dotfile ".tmux.conf" "tmux"
bash ./tmux/configure.sh

install_dotfile "config.cson" "atom" "$HOME/.atom"
bash ./atom/configure.sh

install_dotfile ".bash_profile"
install_dotfile ".bashrc"
install_dotfile ".devopsrc"
install_dotfile ".gitconfig"
install_dotfile ".vimrc"

echo "done." && zsh

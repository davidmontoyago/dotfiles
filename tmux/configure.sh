#!/bin/bash
set +u
source ./functions.sh

printf "\nsetting up tmux...\n"

install_dotfile ".tmux.conf" "tmux"

if [ -d $HOME/.tmux/plugins/tpm ]; then
  cd $HOME/.tmux/plugins/tpm && git pull && cd -
else
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

tmux source ~/.tmux.conf

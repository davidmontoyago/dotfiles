#!/bin/bash
set +u

if [ -e $HOME/.tmux/plugins/tpm ]; then
  cd $HOME/.tmux/plugins/tpm && git pull && cd -
else
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

tmux source ~/.tmux.conf

#!/bin/sh
set -eu -o pipefail

# collect all config files
cp ~/.gitconfig .
cp ~/.tmux.conf .
cp ~/.vimrc .
cp ~/.zshrc .
cp ~/.bashrc .
cp ~/.bash_profile .
cp ~/.atom/config.cson ./atom/

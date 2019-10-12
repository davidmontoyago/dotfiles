#!/bin/bash
set -x

cp ~/Brewfile ./homebrew/
cp ~/.zshrc ./oh-my-zsh/
cp ~/.tmux.conf ./tmux/
cp ~/.bash_profile .
cp ~/.bashrc .
cp ~/.devopsrc .
cp ~/.gitconfig .
cp ~/.vimrc .
cp ~/.atom/config.cson ./atom/

apm list --installed --bare > ./atom/package-list.txt

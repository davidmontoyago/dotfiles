#!/bin/bash

echo "better have my dotfiles when i come to collect.sh... 💵💵💵"

set -x

brew bundle dump --force --file ./homebrew/Brewfile

cp ~/.zshrc ./oh-my-zsh/
cp ~/.tmux.conf ./tmux/
cp ~/.bash_profile .
cp ~/.bashrc .
cp ~/.devopsrc .
cp ~/.gitconfig .
cp ~/.vimrc ./vim/
cp  "$HOME/Library/Application Support/Code/User/settings.json" ./vscode/

code --list-extensions | sort > ./vscode/extension-list.txt

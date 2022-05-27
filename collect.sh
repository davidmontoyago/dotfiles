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
cp ~/.atom/config.cson ./atom/
cp ~/Library/ApplicationSupport/Code/User/settings.json ./vscode/

apm list --installed --bare | sort | sed '1d' > ./atom/package-list.txt

code --list-extensions | sort > ./vscode/extension-list.txt

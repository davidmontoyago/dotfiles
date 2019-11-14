#!/bin/bash
set -u
source ./functions.sh

printf "brew time...\n"

install_dotfile "Brewfile" "homebrew"

printf "\nupdating brew...\n"
brew update

printf "\nupgrading packages...\n"
brew upgrade

printf "\ninstalling packages...\n"
brew bundle --file=~/Brewfile

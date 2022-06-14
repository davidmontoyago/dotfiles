#!/bin/bash
set +u
source ./functions.sh

printf "\ninstalling of-my-zsh...\n"

install_dotfile ".zshrc" "oh-my-zsh"

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#!/bin/bash
set +u
source ./functions.sh

printf "\ninstalling of-my-zsh...\n"

install_dotfile ".zshrc" "oh-my-zsh"

bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

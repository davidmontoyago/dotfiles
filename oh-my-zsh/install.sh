#!/bin/bash
set +u

printf "\ninstalling of-my-zsh...\n"

bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

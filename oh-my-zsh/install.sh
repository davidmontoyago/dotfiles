#!/bin/bash
set +u

bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# make zsh default
chsh -s $(which zsh)

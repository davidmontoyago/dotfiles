#!/bin/bash
set +u
source ./functions.sh

install_dotfile "settings.json" "vscode" "$HOME/Library/ApplicationSupport/Code/User/"

cat ./vscode/extension-list.txt | xargs code --install-extension 

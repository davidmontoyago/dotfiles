#!/bin/bash
set +u
source ./functions.sh

install_dotfile "settings.json" "vscode" "$HOME/Library/ApplicationSupport/Code/User/"

while read vscodeext; do
    code --install-extension "$vscodeext"
done < vscode/extension-list.txt
#!/bin/bash
set +u
source ./functions.sh

install_dotfile "settings.json" "vscode" "$HOME/Library/Application Support/Code/User/"

while read vscodeext; do
    code --install-extension "$vscodeext"
done < vscode/extension-list.txt

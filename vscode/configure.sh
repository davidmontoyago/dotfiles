#!/bin/bash
set +u
source ./functions.sh

cat ./vscode/extension-list.txt | xargs code --install-extension 

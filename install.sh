#!/bin/sh
set -eu -o pipefail

if [ -e ~/Brewfile ]
 then cp ~/Brewfile ~/Brewfile.backup
fi
cp ./homebrew/Brewfile ~/
sh ./homebrew/install.sh

cp ~/.bash_profile ~/.bash_profile.backup && cp ./.bash_profile ~/
cp ~/.bashrc ~/.bashrc.backup && cp ./.bashrc ~/
cp ~/.devopsrc ~/.devopsrc.backup && cp ./.devopsrc ~/

source ~/.bash_profile

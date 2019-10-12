#!/bin/bash
set -u

printf "\ninstalling packages...\n"

brew bundle --file=~/Brewfile

#!/bin/bash

printf "\nconfiguring git-secrets...\n"

git secrets --register-aws --global

git secrets --install ~/.git-templates/git-secrets
git config --global init.templateDir ~/.git-templates/git-secrets

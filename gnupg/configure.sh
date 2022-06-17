#!/bin/bash

printf "\nsetting up tooling for gpg...\n"

mkdir -m 0700 ~/.gnupg

# for commit signing with mac os keychain
echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" | tee ~/.gnupg/gpg-agent.conf
#!/bin/bash
set +u

printf "\nsetting up atom...\n"

# install only non-core atom packages
# core packages are already bundled with Atom and re-installing makes Atom unstable
tmppkgsfile=$(mktemp)
grep -vf ./atom/skip-packages.txt ./atom/package-list.txt > $tmppkgsfile
apm install --compatible --packages-file $tmppkgsfile
rm $tmppkgsfile

#TODO pip install python-language-server

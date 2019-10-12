#!/bin/bash
set +u

printf "\nsetting up atom...\n"

apm install --packages-file ./atom/package-list.txt

#TODO pip install python-language-server

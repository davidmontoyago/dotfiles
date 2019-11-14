#!/bin/bash
set +u
source ./functions.sh

VIM_PLUGINS_DIR=$HOME/.vim/bundle

printf "\nsetting up vim...\n"

install_dotfile ".vimrc" "vim"

# install plugin manager
mkdir -p ~/.vim/autoload $VIM_PLUGINS_DIR && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install plugins
cd $VIM_PLUGINS_DIR

if [ ! -d "./vim-fugitive" ]; then
  git clone https://github.com/tpope/vim-fugitive.git
  vim -u NONE -c "helptags vim-fugitive/doc" -c q
fi

if [ ! -d "./syntastic" ]; then
  git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
fi

if [ ! -d "./nerdtree" ]; then
  git clone https://github.com/scrooloose/nerdtree.git
fi

cd -

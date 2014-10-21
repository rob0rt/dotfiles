#!/bin/bash

# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Airline
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline

# Ctrlp
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

# Oh My Zsh
curl -L http://install.ohmyz.sh | sh

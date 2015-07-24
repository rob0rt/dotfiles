#!/bin/bash

# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Airline
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline

# Ctrlp
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

# Nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Rust
git clone https://github.com/wting/rust.vim.git ~/.vim/bundle/rust.vim

# Hack
git clone git://github.com/hhvm/vim-hack.git ~/.vim/bundle/vim-hack

# Vimrc/ Tmux config/ Git config
wget https://raw.githubusercontent.com/BobertForever/dotfiles/master/.vimrc -P ~/
wget https://raw.githubusercontent.com/BobertForever/dotfiles/master/.tmux.conf -P ~/
wget https://raw.githubusercontent.com/BobertForever/dotfiles/master/.gitconfig -P ~/

# Oh My Zsh
curl -L http://install.ohmyz.sh | sh

#!/usr/bin/env bash
#
# BobertForever/dotfiles ellipsis package

pkg.link() {
    fs.link_files common
}

pkg.install() {
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

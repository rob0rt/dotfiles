#!/usr/bin/env bash
#
# BobertForever/dotfiles ellipsis package

pkg.link() {
    fs.link_files common

    case $(os.platform) in
        osx)
            fs.link_files platform/osx
            ;;
        linux)
            fs.link_files platform/linux
            ;;
    esac
}

pkg.install() {
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

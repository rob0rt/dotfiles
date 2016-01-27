#!/bin/bash

# vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vim config
[ -e ~/.config/nvim/init.vim ] && mv ~/.config/nvim/init.vim.backup
[ -e ~/.vimrc ] && mv ~/.vimrc.backup
curl -fLo ~/.config/nvim/init.vim --create-dirs \
  https://raw.githubusercontent.com/BobertForever/dotfiles/master/.vimrc
ls -s ~/.config/nvim/init.vim ~/.vimrc

# tmux config
[ -e ~/.tmux.conf ] && mv ~/.tmux.conf.backup
curl -fLo ~/.tmux.conf \
  https://raw.githubusercontent.com/BobertForever/dotfiles/master/.tmux.conf

# git config
[ -e ~/.gitconfig ] && mv ~/.gitconfig.backup
curl -fLo ~/.gitconfig \
  https://raw.githubusercontent.com/BobertForever/dotfiles/master/.gitconfig

# Oh My Zsh
if [ ! -d ~/.oh-my-zsh ] then
  curl -L http://install.ohmyz.sh | sh
fi

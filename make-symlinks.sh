# bashrc
if [ ! -L ~/.bashrc ]; then
  ln -s $PWD/.bashrc ~/
fi

# bash configs
if [ ! -L ~/.bash ]; then
  ln -s $PWD/.bash ~/
fi

# zsh configs
if [ ! -L ~/.zshrc ]; then
  ln -s $PWD/.zshrc ~/
fi

# vimrc
if [ ! -L ~/.vimrc ]; then
  ln -s $PWD/.vimrc ~/
fi

# tmux conf
if [ ! -L ~/.tmux.conf ]; then
  ln -s $PWD/.tmux.conf ~/
fi

# gitconfig
if [ ! -L ~/.gitconfig ]; then
  ln -s $PWD/.gitconfig ~/
fi

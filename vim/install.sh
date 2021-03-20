if [ "$(ls -A ~/.vim/autoload/plug.vim)" ]; then
  curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim
fi

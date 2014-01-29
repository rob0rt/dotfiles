# term
if [[ "$TERM" == "xterm" ]]; then
    export TERM="xterm-256color"
fi

if [ "$TERM" == screen ]; then
    export TERM="screen-256color"
fi

# external scripts
if [ -d "$HOME/.bash" ]; then
    for dotfile in $HOME/.bash/*
    do
        . $dotfile
    done
fi


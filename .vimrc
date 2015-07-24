" Always show statusline
set laststatus=2

" Use 256 colors
set t_Co=256

" Diff colors
highlight DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white
highlight DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=black
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black
highlight DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=black

" Tabbing
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

# Lin numbers
set number

" Force syntax highlighting
autocmd BufRead,BufNewFile *.gradle set filetype=groovy
autocmd BufReadPost,BufNewFile *.hh set syntax=php

" Vim window navigation
map<C-H> <C-W>h
map<C-J> <C-W>j
map<C-K> <C-W>k
map<C-L> <C-W>l

" Pathogen
execute pathogen#infect()

" NERD Tree
map <C-n> :NERDTreeToggle<CR>

" Vim Airline
let g:airline_left_sep=''
let g:airline_right_sep=''

" Syntax highlighting
filetype plugin indent on
syntax on

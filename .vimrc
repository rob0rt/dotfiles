" Always show statusline                                                        
set laststatus=2                                                                

" Use 256 colours (Use this setting only if your terminal supports 256 colours) 
set t_Co=256                                                                    

" Diff colors                                                                   
highlight DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white           
highlight DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=black         
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black           
highlight DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=black          

set smartindent                                                                 
set tabstop=2                                                                   
set shiftwidth=2                                                                
set expandtab                                                                   

set colorcolumn=80                                                              

autocmd BufRead,BufNewFile *.gradle set filetype=groovy                         
autocmd BufReadPost,BufNewFile *.hh set syntax=php                              

map<C-H> <C-W>h                                                                 
map<C-J> <C-W>j                                                                 
map<C-K> <C-W>k                                                                 
map<C-L> <C-W>l                                                                 

" Pathogen                                                                      
execute pathogen#infect()                                                       

" Vim Airline                                                                   
let g:airline_left_sep=''                                                      
let g:airline_right_sep=''

" Syntax highlighting
filetype plugin indent on
syntax on

set nocompatible                      " choose no compatibility with legacy vi

" set default 'runtimepath'
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)
let s:portable = expand('<sfile>:p:h')
let &runtimepath = printf('%s,%s,%s/after', s:portable, &runtimepath, s:portable)

""" Pathogen
call pathogen#infect()

syntax enable
set encoding=utf-8
set showcmd                           " display incomplete commands
set number
filetype plugin indent on             " load file type plugins + indentation

""" SCM & virtualenv
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/env/*,*.png,*.jpg,*.jpeg,

""" Whitespace
set nowrap                            " don't wrap lines
autocmd BufWritePre *.* :%s/\s\+$//e  " removes trailing

""" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set backspace=indent,eol,start        " backspace through everything in insert mode

set pastetoggle=<F2>

"" Searching
set hlsearch                          " highlight matches
set incsearch                         " incremental searching
set ignorecase                        " searches are case insensitive...
set smartcase                         " ... unless they contain at least one capital letter

"" ColorScheme
colorscheme hybrid

""" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'r'

"" Force saving files that require root permission
cmap w!! w !sudo tee > /dev/null %

"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

hi Normal ctermbg=none
highlight NonText ctermbg=none

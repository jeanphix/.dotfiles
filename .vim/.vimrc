set nocompatible                      " choose no compatibility with legacy vi
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
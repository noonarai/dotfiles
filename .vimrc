set runtimepath^=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Townk/vim-autoclose'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'slim-template/vim-slim'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

set title
set smartcase
set background=dark
colorscheme desert
syntax on
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set incsearch
set number
set showmatch
set hlsearch

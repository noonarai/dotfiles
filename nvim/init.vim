if &compatible
  set nocompatible
endif
set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.cache/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/deoplete.nvim')
call dein#add('Townk/vim-autoclose')
call dein#add('tpope/vim-endwise')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('slim-template/vim-slim')

call dein#end()

filetype plugin indent on

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

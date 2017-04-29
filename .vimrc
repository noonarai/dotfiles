set runtimepath^=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'vim-scripts/AnsiEsc.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'tpope/vim-fugitive'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
set title           " ファイルのパス情報等を表示
set smartcase       " 小文字のみで検索したときに大文字小文字を無視する
set background=dark " 暗い背景色に合わせた配色にする
colorscheme desert
syntax on
set encoding=utf-8
set tabstop=2       " タブ文字の表示幅
set shiftwidth=2    " インデントの幅
set expandtab       " タブ入力をスペースに置き換える
set incsearch       " 検索ワードの最初の文字を入力した時点で検索を開始する
set number          " 行番号表示
set showmatch       " 対応する括弧を強調
set hlsearch        " 検索結果をハイライト
set laststatus=2    " エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set wildmenu        " コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set showcmd         " 入力中のコマンドを表示
set isk+=-          " ハイフンを単語に含む

""""""""""""""""""""""""""""""
" vim-easy-align
""""""""""""""""""""""""""""""
vmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

""""""""""""""""""""""""""""""
" 80カラム問題
""""""""""""""""""""""""""""""
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif


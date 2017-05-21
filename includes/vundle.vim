set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'tikhomirov/vim-glsl'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'

Plugin 'altercation/vim-colors-solarized'

" Support bundles
"Plugin 'jgdavey/tslime.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'ervandew/supertab'
Plugin 'benekastah/neomake'
Plugin 'vim-syntastic/syntastic'
"Plugin 'moll/vim-bbye'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'vim-scripts/gitignore'


"Plugin 'davidhalter/jedi-vim'
"Plugin 'laurilehmijoki/haskellmode-vim'

" Haskell
Plugin 'bitc/vim-hdevtools'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'enomsg/vim-haskellConcealPlus'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'Twinside/vim-hoogle'
Plugin 'mpickering/hlint-refactor-vim'

" Prolog
Plugin 'adimit/prolog.vim'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins 
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



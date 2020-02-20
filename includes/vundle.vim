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

" GENERAL
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'dense-analysis/ale'
Plugin 'wgwoods/vim-systemd-syntax'

" AUTOCOMPLETION
Plugin 'Valloric/YouCompleteMe'

" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" LATEX and PANDOC and MARKDOWN
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'dkarter/bullets.vim'
Plugin 'gyim/vim-boxdraw'
" Plugin 'ashisha/image.vim'

" GIT
Plugin 'tpope/vim-fugitive'

" JAVASCRIPT
Plugin 'pangloss/vim-javascript'

" PYTHON
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'plytophogy/vim-virtualenv'
Plugin 'tell-k/vim-autopep8'
Plugin 'nvie/vim-flake8'
" Plugin 'davidhalter/jedi-vim'

" RUST
Plugin 'rust-lang/rust.vim', { 'for': 'rust' }
Plugin 'racer-rust/vim-racer', { 'for': 'rust' }


" COLORS
" Plugin 'altercation/vim-colors-solarized'
Plugin 'iCyMind/NeoSolarized'
Plugin 'drewtempelmeyer/palenight.vim'

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



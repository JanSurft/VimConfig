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

Plugin 'ctrlpvim/ctrlp.vim'

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

" VALA
Plugin 'arrufat/vala.vim'

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

" Return to last edit position when opening files (You want this!)
augroup last_edit
  autocmd!
  autocmd BufReadPost *
       \ if line("'\"") > 0 && line("'\"") <= line("$") |
       \   exe "normal! g`\"" |
       \ endif
augroup END

" SPLIT WINDOW SETTINGS
set splitbelow
set splitright

let g:netrw_banner=0
let g:netrw_browse_split=4

map <F2> :echo 'Current time is ' . strftime('%c')<CR>

"map <C-q><up> :tabr<cr>
"map <C-q><down> :tabl<cr>
"map <C-q><left> :tabp<cr>
"map <C-q><right> :tabn<cr>

" EXPLORER NAGIVATION SETTINGS
let g:netrw_liststyle=3
"let g:netrw_hide=1

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" makes every newly opened buffer appear in a new tab
" :au BufAdd,BufNewFile * nested tab sball

inoremap jk <ESC>l
let mapleader=","

" Allow the normal use of "," by pressing it twice
noremap ,, ,

" Kill the damned Ex mode.
nnoremap Q <nop>

" Show trailing whitespace
autocmd FileType haskell set list
" But only interesting whitespace
if &listchars ==# 'eol:$'
  autocmd FileType haskell set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

let g:netrw_sort_sequence = '[\/]$,\<core\%(\.\d\+\)\=,\.[a-np-z]$,*,\.o$,\.obj$,\.info$,\.swp$,\.bak$,\~$'
" let g:netrew_sort_sequence = '*'

" explorer
map <leader>e :Explore<cr>
" save
nnoremap <leader>s :w<cr>
inoremap <leader>s <ESC>:w<cr>
" quit
noremap <leader>q :q<cr>

" next buffer
nnoremap <leader>bn :bn<cr>
inoremap <leader>bn <ESC>:bn<cr>i

nnoremap <leader>bd :bd<cr>
inoremap <leader>bd <ESC>:bd<cr>i

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set pastetoggle=<leader>z

let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'python': 1 }
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

autocmd FileType cpp let g:ycm_key_list_select_completion = ['<TAB>','<Down>','<Enter>']

"map <leader>v v<C-H>:vertical resize 35<CR><C-L>
map <leader>v v:exec 'vertical resize '. string(&columns * 0.8)<CR>

inoremap <C-C> <C-X><C-O>

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

let g:ycm_key_list_select_completion = ['<TAB>']

" autocmd FileType cpp set keywordprg=cppman
command! -nargs=+ Cppman silent! call system("tmux split-window cppman " . expand(<q-args>))
autocmd FileType cpp nnoremap <silent><buffer> K <Esc>:Cppman <cword><CR>

" use ghc functionality for haskell files
" au Bufenter *.hs compiler ghc

  " enable filetype detection, plus loading of filetype plugins
"filetype plugin on

  " configure browser for haskell_doc.vim
"let g:haddock_browser = "/usr/bin/firefox"
    "let g:haddock_browser = "C:/Program Files/Opera/Opera.exe"
    "let g:haddock_browser = "C:/Program Files/Mozilla Firefox/firefox.exe"
    "let g:haddock_browser = "C:/Program Files/Internet Explorer/IEXPLORE.exe"


map <Leader>t :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:SuperTabDefaultCompletionType = '<c-x><c-o>'


"if has('gui_running')
  set grepprg=grep\ -nH\ $*
  filetype indent on
  let g:tex_flavor='latex'
"endif 

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:necoghc_enable_detailed_browse = 1


" Turn backup off
set nobackup
set nowb
set noswapfile

" use spaces instead of tabs
autocmd FileType haskell set expandtab

let g:syntastic_prolog_checkers = ['swipl']

" be smart when using tabs
set smarttab

" Copy and paste to os clipboard
nmap <leader>y "*y
vmap <leader>y "*y
nmap <leader>d "*d
vmap <leader>d "*d
nmap <leader>p "*p
vmap <leader>p "*p

" 1 tab = 2 spaces
autocmd FileType haskell set shiftwidth=2
autocmd FileType haskell set tabstop=2

"set aij
"set si
"set wrap

syntax on
syntax enable
set background=dark
"set t_Co=16
set t_Co=256
set tags=./tags;/
colorscheme solarized

set grepprg=grep\ -nH\ $*

let g:solarized_bold = 1
let g:solarized_underline = 1 
let g:solarized_italic = 1
let g:solarized_contrast = "high"
let g:solarized_visibility= "high"

set encoding=utf-8
set cindent
set tabstop=4
set shiftwidth=4
set nu

autocmd FileType haskell let &formatprg="hindent --tab-size 2 -XQuasiQuotes"

let g:haskell_tabular = 1

"hi clear Conceal
" Pretty unicode haskell symbols
let g:haskell_conceal_wide = 1
let g:haskell_conceal_enumerations = 1
let hscoptions="𝐒𝐓𝐄𝐌xRtB𝔻w"


"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1

set breakindent "showbreak=..
set linebreak
"set foldmethod=indent foldcolumn=4
set shiftwidth=4 tabstop=4 softtabstop=4 " expandtab

autocmd FileType tex setlocal breakindent "showbreak=..
autocmd FileType tex setlocal linebreak
autocmd FileType tex setlocal foldmethod=indent foldcolumn=4
autocmd FileType tex setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType tex setlocal spell
autocmd FileType tex setlocal spelllang=de
autocmd FileType tex setlocal background=light

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'cd build && make clean && find . -delete && cmake .. && make && mv $*.pdf ..'

"'./build.sh' "'mkdir -p build && pdflatex -output-directory=build -interaction=nonstopmode $* && cp *.bib build && cd build && bibtex %:r && cd .. && pdflatex -output-directory=build -interaction=nonstopmode $* && mv build/$*.pdf .'

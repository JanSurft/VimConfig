" Return to last edit position when opening files (You want this!)
augroup last_edit
  autocmd!
  autocmd BufReadPost *
       \ if line("'\"") > 0 && line("'\"") <= line("$") |
       \   exe "normal! g`\"" |
       \ endif
augroup END

" Turn backup off
set nobackup
set nowb
set noswapfile

inoremap jk <ESC>l
let mapleader=","

" Allow the normal use of "," by pressing it twice
noremap ,, ,

" Kill the damned Ex mode.
nnoremap Q <nop>
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
nnoremap <leader>bp :bp<cr>
inoremap <leader>bp <ESC>:bp<cr>i

nnoremap <leader>bd :bd<cr>
inoremap <leader>bd <ESC>:bd<cr>i

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set pastetoggle=<leader>z

" Copy and paste to os clipboard
nmap <leader>y "*y
vmap <leader>y "*y
nmap <leader>d "*d
vmap <leader>d "*d
nmap <leader>p "*p
vmap <leader>p "*p

syntax on
syntax enable

set grepprg=grep\ -nH\ $*
set encoding=utf-8
set cindent
set tabstop=4
set shiftwidth=4
set nu
set rnu

let python_highlight_all=1

set breakindent "showbreak=..
set linebreak
"set foldmethod=indent foldcolumn=4
set shiftwidth=4 tabstop=4 softtabstop=4 " expandtab

set laststatus=2

set exrc
set secure

highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

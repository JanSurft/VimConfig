inoremap jk <ESC>l
let mapleader=","

" Allow the normal use of "," by pressing it twice
noremap ,, ,

" Kill the damned Ex mode.
nnoremap Q <nop>
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



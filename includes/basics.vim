" enable local file loading
set exrc
set secure

function! s:source_project_config() abort
  " let l:projectfile = findfile('.vim/local.vim', expand('%:p').';')
  let l:projectfile = findfile('.vim/local.vim', getcwd().';')
  if filereadable(l:projectfile)
    silent execute 'source' l:projectfile
  endif
endfunction

augroup MyAutoCmds
  autocmd!
  autocmd BufRead,BufNewFile * call <SID>source_project_config()

  if has('nvim')
    autocmd DirChanged * call <SID>source_project_config()
  endif
augroup END

" Return to last edit position when opening files (You want this!)
augroup last_edit
  autocmd!
  autocmd BufReadPost *
       \ if line("'\"") > 0 && line("'\"") <= line("$") |
       \   exe "normal! g`\"" |
       \ endif
augroup END

let g:netrw_sort_sequence = '[\/]$,\<core\%(\.\d\+\)\=,\.[a-np-z]$,*,\.o$,\.obj$,\.info$,\.swp$,\.bak$,\~$'

" do not clear the clipboardon exit
autocmd VimLeave * call system("xsel -ib", getreg('+'))

" Turn backup off
set nobackup
set nowb
set noswapfile

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
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab

set laststatus=2

highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

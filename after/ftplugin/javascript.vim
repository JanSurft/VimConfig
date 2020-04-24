setlocal smarttab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
" setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

silent! so .vimlocal

" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

let g:ale_fix_on_save = 1

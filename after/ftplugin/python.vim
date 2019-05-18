setlocal smarttab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
" setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

"g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0

autocmd Syntax python normal zR

silent! so .vimlocal

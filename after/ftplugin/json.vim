setlocal smarttab
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
" setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix



let b:ale_fixers = {'json': ['jq']}

let g:ale_fix_on_save = 1

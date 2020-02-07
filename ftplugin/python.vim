setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
" setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

autocmd BufWritePre * %s/\s\+$//e
nmap <leader>bd :bd<CR>

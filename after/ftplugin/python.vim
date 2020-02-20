setlocal smarttab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
" setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

let b:ale_linters = {'python': ['bandit', 'mypy', 'flake8', 'pylama', 'pylint']}
let b:ale_fixers = ['add_blank_lines_for_python_control_statements', 'autopep8',
			\ 'black', 'isort', 'reorder-python-imports', 'remove_trailing_lines',
			\ 'trim_whitespace']
let g:ale_warn_about_trailing_whitespace = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_python_flake8_options = '--max-line-length=120'
" let g:ale_python_pylint_options = '--from-stdin'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0

autocmd Syntax python normal zR

silent! so .vimlocal
